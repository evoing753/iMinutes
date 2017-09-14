<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Aku_ForgetPasswd_Demo.aspx.cs" Inherits="ForgetPasswd_Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>iMinutes - 忘記密碼</title>

<!-- CSS -->
<link href="css/login2.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet" />
<link href="css/jcarousel.css" rel="stylesheet" />
<link href="css/flexslider.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" />


<!-- Theme skin -->
<link href="skins/default.css" rel="stylesheet" />


</head>


<body>
    <form id="form1" runat="server">
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
                            <a class="navbar-brand" href="Aku_Home_Demo.aspx"><span>i</span>minutes</a>
                        </div>
                        <!--導覽列-->
                        <div class="navbar-collapse collapse ">
                            <ul class="nav navbar-nav">
                                <li><a href="Aku_Home_Demo.aspx">首頁</a></li>
                        
                                <!--下拉式選單-->
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="true">會議相關</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="Aku_NewConference.aspx">新增會議</a></li>
                                        <li><a href="calendar.aspx">行程管理</a></li>
								        <li><a href="chattest.aspx">線上會議</a></li>
                                        <li><a href="record.aspx">會議記錄</a></li>
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
                                <li><a href="Aku_Home_Demo.aspx"><i class="fa fa-home">首頁</i></a><i class="icon-angle-right"></i></li>
                                <li><a href="Aku_Login_Demo.aspx"><i class="fa fa-sign-in">登入註冊</i></a><i class="icon-angle-right"></i></li>
                                <li class="active"><i class="fa fa-question">忘記密碼</i></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>

            
            <!-- 忘記密碼 -->
            
            <div class="login aligncenter h4">
                <div class="web_login">
                    <div class="login_form">
                        <div class="h3 cue" style="color:red; font-weight:bolder; font-family:微軟正黑體">忘記密碼/修改密碼</div><br />
                        <asp:Label ID="Label1" runat="server" Text="E-mail"></asp:Label>
                        <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                        
                        <asp:Label ID="lblMsg" runat="server" ></asp:Label>
                    </div>
                </div>
                <br />
                <asp:Button CssClass="btn-blue btn" ID="btnSend" runat="server" Text="送出" OnClick="btnSend_Click" />
                <asp:LinkButton ID="LinkBtnBack" runat="server" OnClick="LinkBtnBack_Click">Back to Login</asp:LinkButton>
            </div>
            <!-- 忘記密碼 -->


        </div>
    </form>
</body>
</html>
