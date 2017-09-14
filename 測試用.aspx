<%@ Page Language="C#" AutoEventWireup="true" CodeFile="測試用.aspx.cs" Inherits="Home_Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>iMinutes</title>

    <!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet" />
<link href="css/jcarousel.css" rel="stylesheet" />
<link href="css/flexslider.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" />
<link href="css/jquery-ui-datepicker.css" rel="stylesheet" />


<!-- Theme skin -->
<link href="skins/default.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server" >
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<div id="wrapper">
	<!-- start header -->
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
                        <li class="active"><a href="index.html">首頁</a></li>
                        
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
                        
                        <li><a href="Aku_Login_Demo.aspx">LOGIN/JOIN US</a></li>
                        <li>
                            <ul>
                                <asp:Label ID="lblLoginUserMsg" runat="server" Text="Label" Font-Bold="True" Font-Names="微軟正黑體" ForeColor="#003399"></asp:Label>
                                <asp:Label ID="lbl修改密碼" runat="server" Text="<a href='Aku_ForgetPasswd_Demo.aspx' target='_blank'>修改密碼</a>"></asp:Label>
                                <asp:Label ID="lbl登出" runat="server" Text="<a href='Aku_Home_Demo.aspx' target='_blank'>登出</a>"></asp:Label>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
	</header>
                                <div class="media-body">
                                <div class="form-group">
                                    <center><strong><a class="active btn btn btn-warning btn-lg btn-block"  href="#lE" data-toggle="tab">會員中心</a></strong></center>
                                </div>
                                <div class="form-group">
                                    <center><strong><a href="#lA" class="btn btn-warning btn-lg btn-block qqa"  data-toggle="tab">個人資料</a></strong></center>
                                </div>
                                
                                <div class="form-group">
                                    <center><strong><a class="btn btn-warning btn-lg btn-block qqc" href="#lG" data-toggle="tab">我的方案</a></strong></center>
                                </div>

                                <div class="form-group">
                                    <center><strong><a class="btn btn-warning btn-lg btn-block qqb" href="#lC" data-toggle="tab">我的作品</a></strong></center>
                                </div>
                                <div class="form-group">
                                    <center><strong><a class="colincalendara btn btn-warning btn-lg btn-block" href="#lB"  data-toggle="tab">個人行事曆</a></strong></center>
                                </div>
                                <div class="form-group">
                                    <center><strong><a class="colinchats btn btn-warning btn-lg btn-block" href="#lF" data-toggle="tab">訊息紀錄</a></strong></center>
                                </div>
                                <div class="form-group">
                                    <center><strong><a class="colinletter btn btn-warning btn-lg btn-block" href="#lD" data-toggle="tab">站內信</a></strong></center>
                                </div>
                            </div>
<!--個人行事曆開始-->
                    <div class="tab-pane" id="lB">
                        <div class="breadcrumb">
                            <div class="wrap">
                                <div class="container-fluid" style="text-align: left">
                                    <a href="Default.aspx"><i class="icon-home"></i>首頁</a><span>/</span>個人行事曆                 
                                </div>
                            </div>
                        </div>
                        <div id='calendar'></div>
                        <br />

                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <span style="color: #ff6a00;">待確認之方案:</span>
                                <asp:DropDownList ID="DropDownList1" runat="server" Style="display: inline-block; margin-left: 1%;" CssClass="form-control span3"  AutoPostBack="True"></asp:DropDownList>
                                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <!--個人行事曆結束-->                 
     <!--訊息開始-->
                    <div class="tab-pane" id="lF">
                        <div class="breadcrumb">
                            <div class="wrap">
                                <div class="container-fluid" style="text-align: left">
                                    <a href="Default.aspx"><i class="icon-home"></i>首頁</a><span>/</span>訊息紀錄                 
                                </div>
                            </div>
                        </div>
                        <div class="chatcontent">
                            <%--<asp:Label ID="MainMsg" runat="server" Text=""></asp:Label>--%>
                        </div>
                        <div class="colinpaganation">
                        </div>
                    </div>
                    <!--訊息結束-->

    
    
    
    <!--Footer 內容之後更改 大致放聯絡資料 外部連接等等...-->
	<footer>
	<div class="container">
		
        <div class="row">
			
            <div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">Get in touch with us</h5>
					<address>
					<strong>iMinutes</strong><br>
					 高雄市xx區xx路xx號 </address>
					<p>
						<i class="icon-phone"></i> (06) 456-7890 - (06) 987-6543 <br>
						<i class="icon-envelope-alt"></i> iMinutes@iminutes.com
					</p>
				</div>
			</div>
			
            <div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">Pages</h5>
					<ul class="link-list">
						<li><a href="#">Press release</a></li>
						<li><a href="#">Terms and conditions</a></li>
						<li><a href="#">Privacy policy</a></li>
						<li><a href="#">Career center</a></li>
						<li><a href="#">Contact us</a></li>
					</ul>
				</div>
			</div>
            
			<div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">Latest posts</h5>
					<ul class="link-list">
						<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
						<li><a href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
						<li><a href="#">Natus error sit voluptatem accusantium doloremque</a></li>
					</ul>
				</div>
			</div>
            			
		</div>
        
	</div>
    
    
	<div id="sub-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="copyright">
						<p>
							<span>&copy; Moderna 2017 All right reserved. By </span><a href="#" target="_blank">iMinutes</a>
						</p>
					</div>
				</div>
				<div class="col-lg-6">
					<ul class="social-network">
						<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
						<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</footer>
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>



<!-- javascript -->
<!-- script放下面讀取較快(maybe) -->

<script src="js/jquery.js"></script>
<script src="js/jquery-ui-datepicker.js"></script>
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
        <script type="text/javascript">
    $(document).ready(function () {            
            $(".datepicker").datepicker();
    });
</script>


        </form>
</body>
</html>
