<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_Demo.aspx.cs" Inherits="Login_Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>iMinutes - Sign</title>

<!-- CSS -->
<link href="css/login2.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet" />
<link href="css/jcarousel.css" rel="stylesheet" />
<link href="css/flexslider.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" />


<!-- Theme skin -->
<link href="skins/default.css" rel="stylesheet" />



<!--驗證的css-->
<style type="text/css">
#span_result{
    color:Red;
    font-size:12px;      
}

.auto-style1{
    float:left;
    color:#ff0000;
}

.auto-style2 {
    font-family: Georgia, "Times New Roman", Times, serif;
    font-size: medium;
    color: #336699;
}

</style>





</head>
<body>
<form id="form1" runat="server" method="post">
<div id="wrapper">
<!--header 功能列-->
	<header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><span>i</span>minutes</a>
                </div>
                <!--導覽列-->
              <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li><a href="Home_Demo.aspx">首頁</a></li>
                        
                        <!--下拉式選單-->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="true">會議相關</a>
                            <ul class="dropdown-menu">
                                <li><a href="新增會議.html">新增會議</a></li>
                                <li><a href="行程管理.html">行程管理</a></li>
								<li><a href="#">線上會議</a></li>
                                <li><a href="會議記錄.html">會議記錄</a></li>
                            </ul>
                        </li>
                        
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="true"> Q&A </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">常見問題</a></li>
                                <li><a href="#">帳號相關</a></li>
                                <li><a href="#">客服中心</a></li>
                            </ul>

                        </li>
                        <li class="active"><a href="login.html">LOGIN/JOIN US</a></li>
                    </ul>
                </div>
            </div>
        </div>
	</header>
<!-- end header -->
    <section id="inner-headline">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="breadcrumb">
                        <li><a href="index.html"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
                        <li class="active"><i class="fa fa-user-md">LOGIN/JOIN US</i></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

<!--登入註冊-->
	<h1 style="text-align:center">WELCOME</h1>
	<div class="login" style="margin-top:30px;text-align:center; top: 0px;">
    
 	<div class="header">
   		<div class="switch" id="switch" style="text-align:center">
    		<a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">登入</a>
			<a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">註冊</a>
        		<div class="switch_bottom" id="switch_bottom" style="position: fixed; width: 45px; left: 0px;">
      			</div>
   		</div>
    </div>    
  
<!--登入欄位-->    
    <div class="web_qr_login aligncenter" id="web_qr_login" style="display: block; top: 15px;">
        <div class="web_login" id="web_login">
            <div class="login_form">
                <%--<form  action="http://www.js-css.cn" name="loginform" accept-charset="utf-8" id="login_form" class="loginForm" method="post">--%>       
                <input type="hidden" name="did" value="0"/>
                <input type="hidden" name="to" value="log"/>
                <div class="cue">用戶登入</div>

                <div class="uinArea aligncenter" id="uinArea">
                	<label class="input-tips" for="u">帳號：</label>
                		<div class="inputOuter" id="uArea">
                            <asp:TextBox ID="txtloginUser" runat="server" CssClass="inputstyle" ></asp:TextBox>
                		</div>
                </div>

                <div class="pwdArea" id="pwdArea">
               		<label class="input-tips" for="p">密碼：</label> 
               		<div class="inputOuter" id="pArea">
                        <asp:TextBox ID="txtloginPasswd" runat="server" CssClass="inputstyle"  ></asp:TextBox>
                		<asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Names="微軟正黑體" ForeColor="Red" Text="Label"></asp:Label>
                	</div>
                </div>

                

                <fieldset>
                    <!--src連結到ValidateNumber.ashx即可-->
                    <img src="ValidateNumber.ashx" alt="驗證碼" name="imgCode" /> 
                    <input type="button" onclick="form1.imgCode.src='ValidateNumber.ashx?' + Math.random();" value="重新整理" />
                </fieldset>

                <fieldset style="padding-top:5px">
                    <!--前端驗證結果訊息要放到span_result的innerHtml-->
                    <asp:TextBox ID="txt_input" runat="server" />
                </fieldset>

                <span id="span_result"></span>

                <div class="input-lg" style="margin-top:10px;">
                    <%--<input type="submit" value="登 入" style="width:250px;" class="button_blue"/>--%>
                    <asp:Button ID="btn登入" runat="server" Text="登 入" OnClientClick="return isPassValidateCode();" onClick="btn登入_Click" style="width:250px;" CssClass="button_blue" />
                    
                </div>

                <span class="auto-style2" style="padding-top:20px"><strong><a href="ForgetPasswd_Demo.aspx">忘記密碼？</a></strong></span>
                
           	</div>       
        </div>
    </div>

<!--登入end-->



<!--註冊欄位頁面-->
    <div class="qlogin" id="qlogin" style="display: none ">
        <div class="web_login">
            <%--<form name="form2" id="regUser" accept-charset="utf-8" runat="server" action="Home_Demo.aspx" method="post">--%>
	        <input type="hidden" name="to" value="reg"/>
		    <input type="hidden" name="did" value="0"/>
            <div id="userCue" class="cue">用戶註冊</div>
        	    <div class="reg_form" id="reg-ul">
                    <fieldset>                	
                        <label for="user"  class="input-tips2">帳號</label>
                            <div class="inputOuter2">
                                <asp:TextBox ID="txtUser" runat="server" MaxLength="50" CssClass="inputstyle2"></asp:TextBox>
                                <span class="auto-style1">*

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="帳號不可空白,需用電子郵件註冊" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="電子郵件格式不符" style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>

                                </span>
                            </div>                    
                    </fieldset>
                
                    <fieldset>
                        <label for="username" class="input-tips2">姓名</label>
                            <div class="inputOuter2">                       
                                <asp:TextBox ID="txtName" runat="server" MaxLength="20" CssClass="inputstyle2"></asp:TextBox>
                                <span class="auto-style1">*</span>
                            </div>
          		    </fieldset>
                
                    <fieldset>
                        <label for="passwd" class="input-tips2">密碼</label>
                            <div class="inputOuter2">
                                <asp:TextBox ID="txtpasswd" runat="server" MaxLength="16" CssClass="inputstyle2"></asp:TextBox>
                                <span class="auto-style1">*
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpasswd2" ControlToValidate="txtpasswd" Display="Dynamic" ErrorMessage="密碼與確認不符" ></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpasswd" Display="Dynamic" ErrorMessage="密碼不可空白" ></asp:RequiredFieldValidator>
                                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtpasswd" Display="Dynamic" ErrorMessage="密碼至少含有一個非數字符號字元" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                                </span>
                            </div>                    
                    </fieldset>
                
                    <fieldset>
                        <label for="passwd2" class="input-tips2">確認密碼</label>
                            <div class="inputOuter2">
                                <asp:TextBox ID="txtpasswd2" runat="server" MaxLength="16" CssClass="inputstyle2"></asp:TextBox>
                                <span class="auto-style1">*</span>
                            </div>                    
                    </fieldset>
                
                    <fieldset>
                        <label for="phone" class="input-tips2">手機號碼</label>
                            <div class="inputOuter2">
                                <asp:TextBox ID="txtphone" runat="server" MaxLength="50" CssClass="inputstyle2"></asp:TextBox>
                                <span class="auto-style1">*
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtphone" ErrorMessage="手機號碼不可留白" Display="Static"></asp:RequiredFieldValidator>
                                </span>
                            </div>                   
                    </fieldset>
                                
                    <%--<li>
                    <label for="upImage" class="input-tips2">圖片上傳：</label>
                	    <div class="inputOuter2" style="text-align:center">
                            <input type='file' class="upImage" maxlength="50"/>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="upImage" />
        				    <img class="preview" class="inputOuter2" style="max-width: 150px; max-height: 150px;">
        				    <div class="size" style="text-align:center">預 覽</div>
                            <span class="auto-style1">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </span>
                	    </div>
                    </li>--%>
                
                    <fieldset>
                        <div class="inputArea">
                            <asp:Button ID="btn新增" runat="server" onClick="btn新增_Click" style="margin-top:10px;margin-left:85px" CssClass="button_blue" Text="同意規範並註冊" /> <a href="#" class="zcxy" target="_blank">註冊規範</a>
                        </div>                    
                    </fieldset>
                </div>
            </div>
           
    
        </div>
    </div>
<!--註冊頁面end-->

</div>
<div class="jianyi">*推薦使用IE8或以上版本IE瀏覽器或CHROME瀏覽器訪問本站</div>


        </form>
           
    
<!--JQuery/JavaScript-->
<script src="js/jquery.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/jquery.fancybox-media.js"></script>
<script src="js/google-code-prettify/prettify.js"></script>
<script src="js/portfolio/jquery.quicksand.js"></script>
<script src="js/portfolio/setting.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script>

<!--Login-->
<script src="js/login/login.js"></script>

<!-- 驗證碼 -->
<script type="text/javascript">

    function isPassValidateCode() {
        var  nowValidateNumber =  jQuery.ajax({
            url: "readSessionValidateNumber.ashx",
            type: "post",
            async: false,
            data:{},
            success: function (htmlVal) {  }
        }).responseText;

        var userInput = jQuery("#<% = txt_input.ClientID%>").val();

        var validateResult = ((nowValidateNumber == userInput) ? true : false);


        if (validateResult == false) {
            jQuery("#span_result").html("驗證碼輸入不正確");
        }

        //回傳true Or false
        return validateResult;
    }
</script>

</body>
</html>
