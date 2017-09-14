<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Aku_Home_Demo.aspx.cs" Inherits="Home_Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>iMinutes</title>

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
    <form id="form1" runat="server" method="get">
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
<%--                                        <li><a href="chattest.aspx">線上會議</a></li>--%>
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
<%--            </section>--%>

            <section class="callaction">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="big-cta">
                                <div class="cta-text">
                                    <h2>i<span>Minutes</span> A NEW APPS FOR MEETING</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!--導覽列圖片排版-->
            <div id="main-slider" class="flexslider">
                <ul class="slides">
                    <li>
                        <img src="img/slides/1.jpg" alt="1.jpg" /><!--圖片px需一致 不然會亂跳-->
                        <div class="flex-caption" align="left">
                            <h3>導覽圖片1標題</h3>
                            <p>1024 x 360</p>
                            <a href="#" class="btn btn-theme">了解更多</a>
                        </div>
                    </li>
                    <li>
                        <img src="img/slides/2.jpg" alt="2.jpg" />
                        <div class="flex-caption" align="left">
                            <h3>導覽圖片2標題</h3>
                            <p>1024 x 360</p>
                            <a href="#" class="btn btn-theme">了解更多</a>
                        </div>
                    </li>
                    <li>
                        <img src="img/slides/3.jpg" alt="3.jpg" />
                        <div class="flex-caption" align="left">
                            <h3>導覽圖片3標題</h3>
                            <p>1024 x 360</p>
                            <a href="#" class="btn btn-theme">了解更多</a>
                        </div>
                    </li>
                </ul>
            </div>
            <!--導覽列圖片end-->


            <div class="col-lg-11">
                <!-- Slider -->
                <!-- end slider -->
            </div>

            <section id="content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="box">
                                        <div class="box-gray aligncenter">
                                            <h4>適合各大平台</h4>
                                            <div class="icon">
                                                <i class="fa fa-desktop fa-3x"></i>
                                            </div>
                                            <p>
                                                功能文宣簡介
							
                                            </p>

                                        </div>
                                        <div class="box-bottom">
                                            <a href="#" title="show more">了解更多</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="box">
                                        <div class="box-gray aligncenter">
                                            <h4>時程功能大標題</h4>
                                            <div class="icon">
                                                <i class="fa fa-clock-o fa-3x"></i>
                                                <!--icon變更 fa-開頭為icon css -->
                                            </div>
                                            <p>
                                                功能文宣簡介
							
                                            </p>

                                        </div>
                                        <div class="box-bottom">
                                            <a href="#" title="show more">了解更多</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="box">
                                        <div class="box-gray aligncenter">
                                            <h4>紀錄功能大標題</h4>
                                            <div class="icon">
                                                <i class="fa fa-edit fa-3x"></i>
                                            </div>
                                            <p>
                                                功能文宣簡介
							
                                            </p>
                                        </div>
                                        <div class="box-bottom">
                                            <a href="#" title="show more">了解更多</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="box">
                                        <div class="box-gray aligncenter">
                                            <h4>群組功能大標題</h4>
                                            <div class="icon">
                                                <i class="fa fa-group fa-3x"></i>
                                            </div>
                                            <p>
                                                功能文宣簡介
							
                                            </p>

                                        </div>
                                        <div class="box-bottom">
                                            <a href="#" title="show more">了解更多</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- divider -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="solidline">
                            </div>
                        </div>
                    </div>
                    <!-- end divider -->

                    <!-- 點小圖 彈出大圖&內容文字  -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="heading">功能畫面(彈出方式表現)</h4>
                            <div class="row">
                                <section id="projects">
                                    <ul id="thumbs" class="portfolio">
                                        <!-- 圖1 START -->
                                        <li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="web">
                                            <div class="item-thumbs">
                                                <!-- 圖片完整內容 -->
                                                <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="圖片大標題1" href="img/works/1.jpg">
                                                    <span class="overlay-img"></span>
                                                    <span class="overlay-img-thumb font-icon-plus"></span>
                                                </a>
                                                <img src="img/works/1.jpg" alt="功能內容介紹1">
                                            </div>
                                        </li>
                                        <!-- 圖片1 END -->

                                        <!-- 圖片2 START -->
                                        <li class="item-thumbs col-lg-3 design" data-id="id-1" data-type="icon">
                                            <!-- 圖片完整內容 -->
                                            <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="圖片大標題2" href="img/works/2.jpg">
                                                <span class="overlay-img"></span>
                                                <span class="overlay-img-thumb font-icon-plus"></span>
                                            </a>
                                            <img src="img/works/2.jpg" alt="功能內容介紹2">
                                        </li>
                                        <!-- 圖片2 END -->

                                        <!-- 圖片3 START -->
                                        <li class="item-thumbs col-lg-3 photography" data-id="id-2" data-type="illustrator">
                                            <!-- 圖片完整內容 -->
                                            <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="圖片大標題3" href="img/works/3.jpg">
                                                <span class="overlay-img"></span>
                                                <span class="overlay-img-thumb font-icon-plus"></span>
                                            </a>
                                            <!-- 大圖&大標題&文字內容 -->
                                            <img src="img/works/3.jpg" alt="功能內容介紹3">
                                        </li>
                                        <!-- 圖片3 END -->

                                        <!-- 圖片4 START -->
                                        <li class="item-thumbs col-lg-3 photography" data-id="id-2" data-type="illustrator">
                                            <!-- 圖片完整內容 -->
                                            <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="圖片大標題4" href="img/works/4.jpg">
                                                <span class="overlay-img"></span>
                                                <span class="overlay-img-thumb font-icon-plus"></span>
                                            </a>
                                            <!-- 大圖&大標題&文字內容 -->
                                            <img src="img/works/4.jpg" alt="功能內容介紹4">
                                        </li>
                                        <!-- 圖片4 END -->
                                    </ul>
                                </section>
                            </div>
                        </div>
                    </div>

                </div>
            </section>



            <!--Footer 內容之後更改 大致放聯絡資料 外部連接等等...-->
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
        </div>
        <a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>



        <!-- javascript -->
        <!-- script放下面讀取較快(maybe) -->
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


    </form>
</body>
</html>
