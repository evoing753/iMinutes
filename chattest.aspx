<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chattest.aspx.cs" Inherits="chattest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>iMinutes - 視訊會議</title>
    <link rel="stylesheet" type="text/css" href="/css/result-light.css" />


    <style type="text/css">
        .video-div {
            border-radius: 5px;
            border: 1px solid black;
            margin: 0 5px;
            width: 320px;
            overflow: hidden;
            display: inline-block;
        }

            .video-div video {
                width: 320px;
            }

            .video-div h2 {
                border-top: 5px solid #080808;
                padding: 5px 10px;
                margin: 0;
                margin-top: -4px;
                overflow: hidden;
            }

        #videos-container {
            text-align: center;
        }
    </style>
    <!-- OnlineVideo CSS -->
    <link rel="stylesheet" href="css/getHTMLMediaElement.css" />

    <!-- CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet" />
    <link href="css/jcarousel.css" rel="stylesheet" />
    <link href="css/flexslider.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />


</head>
<body>
    <div id="wrapper">
        <form id="from1" runat="server">
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
                                <li class="active">視訊會議</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>

            <section id="content" style="background-color: lightgrey">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="videos-container"></div>

                        </div>
                    </div>
                </div>
            </section>
    </div>
    </form>


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


    <!-- Javascript -->
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
    <script src="https://rtcmulticonnection.herokuapp.com/dist/RTCMultiConnection.min.js"></script>
    <script src="https://rtcmulticonnection.herokuapp.com/socket.io/socket.io.js"></script>

    <script type="text/javascript">
        window.onload = function () {
            var connection = new RTCMultiConnection();

            // this line is VERY_important
            connection.socketURL = 'https://app9503.ddns.net:9001/';

            connection.extra = {
                fullname: '<%=getLoginUser()%>'
            //divBGColor: prompt('Please enter DIV background color.')
        };

        connection.session = {
            audio: true,
            video: true
        };

        connection.sdpConstraints.mandatory = {
            OfferToReceiveAudio: true,
            OfferToReceiveVideo: true
        };

        var videosContainer = document.getElementById('videos-container');
        connection.onstream = function (event) {
            delete event.mediaElement.id; // make sure that below DIV has unique ID in the DOM

            var div = document.createElement('div');
            div.id = event.streamid;
            div.className = 'video-div';
            div.appendChild(event.mediaElement); // appending VIDOE to DIV

            var h2 = document.createElement('h2');
            h2.innerHTML = event.extra.fullname;
            //h2.innerHTML = event.extra.divBGColor;
            div.appendChild(h2);

            div.style.backgroundColor = event.extra.divBGColor;

            videosContainer.appendChild(div);
        };

        connection.onstreamended = function (event) {
            var div = document.getElementById(event.streamid);
            if (div && div.parentNode) {
                div.parentNode.removeChild(div); // remove it from the DOM
            }
        };
        // consider the URL as UNIQUE-ROOM-ID
        connection.openOrJoin(connection.channel);
    }
    </script>
</body>
</html>
