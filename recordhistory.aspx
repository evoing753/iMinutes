<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recordhistory.aspx.cs" Inherits="_Default" ValidateRequest="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>iMinutes - 會議MEMO(歷史紀錄)</title>

    <!-- css -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet" />
    <link href="css/jcarousel.css" rel="stylesheet" />
    <link href="css/flexslider.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />


    <!-- Theme skin -->
    <link href="skins/default.css" rel="stylesheet" />

</head>


<body>
    <form id="record" runat="server">

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
                            <a class="navbar-brand" href="Aku_Home_Demo.aspx"><span>i</span>minutes</a>
                        </div>
                        <!--導覽列-->
                        <div class="navbar-collapse collapse ">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="Aku_Home_Demo.aspx">首頁</a></li>

                                <!--下拉式選單-->
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="true">會議相關</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="Aku_NewConference.aspx">新增會議</a></li>
                                        <li><a href="calendar.aspx">行程管理</a></li>
                                        <%--<li><a href="chattest.aspx">線上會議</a></li>--%>
                                        <li><a href="recordhistory.aspx">會議記錄</a></li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="true">Q&A </a>
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
                                        <asp:LinkButton ID="linkbtnOut" runat="server" OnClick="linkbtnOut_Click">登出</asp:LinkButton>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </header>

            <section id="inner-headline">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="breadcrumb">
                                <li><a href="Aku_Home_Demo.aspx"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
                                <li class="active">會議MENO(歷史紀錄)</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>

            <div class="col-lg-12">
                <h4>會議MEMO編輯器</h4>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:Label ID="Label2" runat="server" Text="歷史紀錄" Font-Bold="True" Font-Names="微軟正黑體" ForeColor="#003399"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <script id="editor" type="text/plain"></script>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Button runat="server" ID="send_record" class="btn btn-blue" Text="存檔" OnClick="send_record_Click" />
                        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Names="微軟正黑體" ForeColor="#003399"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
    </form>
    </div>

    <footer>
        <div class="container">

            <div class="row">

                <div class="col-lg-3">
                    <div class="widget">
                        <h5 class="widgetheading">Get in touch with us</h5>
                        <address>
                            <strong>iMinutes</strong><br>
                            高雄市xx區xx路xx號
                        </address>
                        <p>
                            <i class="icon-phone"></i>(06) 456-7890 - (06) 987-6543
                                    <br>
                            <i class="icon-envelope-alt"></i>iMinutes@iminutes.com
				
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
    <a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>


    <!-- javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.fancybox.pack.js"></script>
    <script src="js/jquery.fancybox-media.js"></script>
    <script src="js/portfolio/jquery.quicksand.js"></script>
    <script src="js/portfolio/setting.js"></script>
    <script src="js/jquery.flexslider.js"></script>
    <script src="js/animate.js"></script>
    <script src="js/custom.js"></script>

    <!-- 編輯器設定檔JS -->
    <script type="text/javascript" src="/js/ueditor1_4_3_3-utf8-asp/ueditor.config.js"></script>
    <!-- 編輯器JS -->
    <script type="text/javascript" src="/js/ueditor1_4_3_3-utf8-asp/ueditor.all.js"></script>
    <script type="text/javascript" src="/js/ueditor1_4_3_3-utf8-asp/lang/en/en.js"></script>
    <!-- 載入編輯器 -->
    <script type="text/javascript">
        var ue = UE.getEditor('editor',
                               {
                                   focus: true,
                                   autoHeight: false,
                                   elementPathEnabled: false,

                                   toolbars: [[
                                       'undo', //撤销
                                       'bold', //加粗 
                                       'indent', //首行缩进
                                       'snapscreen', //截图
                                       'underline', //下划线 
                                       'strikethrough', //删除线
                                       'print', //打印 
                                       'preview', //预览
                                       'fontfamily', //字体 
                                       'fontsize', //字号
                                       'insertimage', //多图上传
                                       'insertvideo', //视频
                                       'link', //超链接
                                       'spechars', //特殊字   
                                       'forecolor', //字体颜色 
                                       'backcolor', //背景色
                                       'inserttable', //插入表格
                                       'charts', // 图表
                                   ]]
                               });

    </script>
</body>
</html>
