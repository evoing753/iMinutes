
/////Click事件/////
$(function(){
	
	$('#switch_qlogin').click(function(){
		$('#switch_login').removeClass("switch_btn_focus").addClass('switch_btn');
		$('#switch_qlogin').removeClass("switch_btn").addClass('switch_btn_focus');
		$('#switch_bottom').animate({left:'0px',width:'70px'});
		$('#qlogin').css('display','none');
		$('#web_qr_login').css('display','block');
		
		});
	$('#switch_login').click(function(){
		
		$('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
		$('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
		$('#switch_bottom').animate({left:'154px',width:'70px'});
		
		$('#qlogin').css('display','block');
		$('#web_qr_login').css('display','none');
		});
if(getParam("a")=='0')
{
	$('#switch_login').trigger('click');
}

	});
	
function logintab(){
	scrollTo(0);
	$('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
	$('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
	$('#switch_bottom').animate({left:'154px',width:'96px'});
	$('#qlogin').css('display','none');
	$('#web_qr_login').css('display','block');
	
}


/////取參數name/////
function getParam(name) { 
    var params = location.search.substr(1); 
    var ArrParam = params.split('&'); 
    if (ArrParam.length == 1) { 
        //單一
        return params.split('=')[1]; 
    } 
    else { 
        //多個 
        for (var i = 0; i < ArrParam.length; i++) { 
            if (ArrParam[i].split('=')[0] == name) { 
                return ArrParam[i].split('=')[1]; 
            } 
        } 
    } 
}  


var reMethod = "GET",
	pwdmin = 6;

$(document).ready(function() {

	//帳號空白
	$('#reg').click(function() {

		if ($('#user').val() == "") {
			$('#user').focus().css({
				border: "1px solid red",
				boxShadow: "0 0 2px red"
			});
			//return
			$('#userCue').html("<font color='red'><b>×帳號欄位不能空白</b></font>");
			return false;
		}


		//帳號長度限制
		if ($('#user').val().length < 6 || $('#user').val().length > 16) {

			$('#user').focus().css({
				border: "1px solid red",
				boxShadow: "0 0 2px red"
			});
			//長度超過規範
			$('#userCue').html("<font color='red'><b>×帳號長度需4-16字符</b></font>");
			return false;

		}
		$.ajax({
			type: reMethod,
			url: "/member/ajaxyz.php",
			data: "uid=" + $("#user").val() + '&temp=' + new Date(),
			dataType: 'html',
			success: function(result) {

				if (result.length > 2) {
					$('#user').focus().css({
						border: "1px solid red",
						boxShadow: "0 0 2px red"
					});$("#userCue").html(result);
					return false;
				} else {
					$('#user').css({
						border: "1px solid #D7D7D7",
						boxShadow: "none"
					});
				}

			}
		});


		if ($('#passwd').val().length < pwdmin) {
			$('#passwd').focus();
			$('#userCue').html("<font color='red'><b>×密碼不能小於" + pwdmin + "位</b></font>");
			return false;
		}
		if ($('#passwd2').val() != $('#passwd').val()) {
			$('#passwd2').focus();
			$('#userCue').html("<font color='red'><b>×密碼不一致!</b></font>");
			return false;
		}
		$('#regUser').submit();
	});
	
	//單一圖片上傳
	$(function (){
 	//計算檔案大小方法
    function format_float(num, pos)
    {
        var size = Math.pow(10, pos);
        return Math.round(num * size) / size;
    }
 
    function preview(input) {
 
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('.preview').attr('src', e.target.result);
                var KB = format_float(e.total / 1024, 2);
                $('.size').text("檔案大小：" + KB + " KB");
            }
 
            reader.readAsDataURL(input.files[0]);
        }
    }
	//preview方法觸發
    $("body").on("change", ".upImage", function (){
        preview(this);
    })
    
})

});