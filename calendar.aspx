<%@ Page Language="C#" AutoEventWireup="true" CodeFile="calendar.aspx.cs" Inherits="calendar" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>iMinutes - 行程管理</title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet" />
    <link href="css/flexslider.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="skins/default.css" rel="stylesheet" />
    <link href="css/fullcalendar.min.css" rel="stylesheet" />
    <link href="css/fullcalendar.print.min.css" rel="stylesheet" media='print' />


</head>


<body>
    <form id="form1" runat="server">
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
            <!-- end header -->
            <!-- 所在頁面標示 -->
            <section id="inner-headline">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="breadcrumb">
                                <li><a href="Aku_Home_Demo.aspx"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
                                <li class="active"><i class="fa fa-clock-o">行程管理</i></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
            <!-- 所在頁面標示 -->


            <section id="content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- 行事曆 目前取系統時間 -->
                            <div id="calendar"></div>
                            <!-- 行事曆 -->
                        </div>
                    </div>
                </div>
            </section>
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
<%--        </div>--%>
        <a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>



        <!--////////////////////////////////////////////////////////////-->
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
        <script src="js/validate.js"></script>
        <script src="js/moment.min.js"></script>
        <script src="js/fullcalendar.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script>
            $(document).ready(function () {
                var date = new Date();
                var day = date.getDate();
                var month = date.getMonth();
                var year = date.getYear();
                var loginuser = '<%=getLoginUser()%>';
                if (loginuser == 'jacklau0428') {//判斷事件用
                    event = [
                        {
                            title: '每月例會',
                            start: '2017-09-01T13:00:00',
                            end: '2017-09-01T17:00:00',
                            url: 'http://localhost:5000/chat'//文字會議
                        },
                        {
                            title: '暗部研發',
                            start: '2017-08-28  00:16',
                            end: '2017-08-29  00:16',
                            url: 'http://localhost:5000/chat'//文字會議
                        },
                        {
                            title: '暗部就班',
                            start: '2017-08-25  00:31',
                            end: '2017-08-25  00:31',
                            url: 'http://localhost:5000/chat'//文字會議
                        },


                            {
                                title: '',
                                start: moment().add().format()
                            }
                    ];
                } if (loginuser == 'aiopjy') {//判斷事件用
                    event = [
                        {
                            title: '每月例會',
                            start: '2017-09-01T13:00:00',
                            end: '2017-09-01T17:00:00',
                            url: 'http://localhost:5000/chat'//文字會議
                        },
                        {
                            title: '暗部就班',
                            start: '2017-08-25  00:31',
                            end: '2017-08-25  00:31',
                            url: 'http://localhost:5000/chat'//文字會議
                        },


                            {
                                title: '',
                                start: moment().add().format()
                            }
                    ];
                } if (loginuser == 'evoing753') {//判斷事件用
                    event = [
                        {
                            title: '每月例會',
                            start: '2017-09-01T13:00:00',
                            end: '2017-09-01T17:00:00',
                            url: 'http://localhost:5000/chat'//文字會議
                        },
                        {
                            title: '暗部就班',
                            start: '2017-08-25  00:31',
                            end: '2017-08-25  00:31',
                            url: 'http://localhost:5000/chat'//文字會議
                        },


                            {
                                title: '',
                                start: moment().add().format()
                            }
                    ];
                } if (loginuser == '12345') {//判斷事件用
                    event = [
                        {
                            title: '每月例會',
                            start: '2017-09-01T13:00:00',
                            end: '2017-09-01T17:00:00',
                            url: 'http://localhost:5000/chat'//文字會議
                        },
                        {
                            title: '暗部就班',
                            start: '2017-08-25  00:31',
                            end: '2017-08-25  00:31',
                            url: 'http://localhost:5000/chat'//文字會議
                        },


                            {
                                title: '',
                                start: moment().add().format()
                            }
                    ];
                } if (loginuser == 'bhur7621') {//判斷事件用
                    event = [
                        {
                            title: '每月例會',
                            start: '2017-09-01T13:00:00',
                            end: '2017-09-01T17:00:00',
                            url: 'http://localhost:5000/chat'//文字會議
                        },
                        {
                            title: '暗部就班',
                            start: '2017-08-25  00:31',
                            end: '2017-08-25  00:31',
                            url: 'http://localhost:5000/chat'//文字會議
                        },


                            {
                                title: '',
                                start: moment().add().format()
                            }
                    ];
                }

                console.log(event);


                $('#calendar').fullCalendar({
                    //排列更動
                    header: {
                        left: 'prev,next today',
                        center: 'title',
                        right: 'month,agendaWeek,agendaDay'
                    },

                    buttonText: {	//格式改為中文
                        today: '今天',
                        month: '月',
                        week: '週',
                        day: '日',
                    },
                    allDayText: '全天',
                    monthNames: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
                    monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
                    dayNames: ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'],
                    dayNamesShort: ['週日', '週一', '週二', '週三', '週四', '週五', '週六'],

                    editable: true,//日期拖曳
                    
                    events: event
                    //,

                    //dayClick: function (date, event, view) {
                    //    console.log('add event');
                    //    console.log(date);
                    //    console.log(event);
                    //    console.log(view);
                    //},
                    //eventClick: function (date, event, view) {
                    //    console.log('modify event');
                    //    console.log(date);
                    //    console.log(event);
                    //    console.log(view);
                    //}
                });
            });


    </script>
    </form>
</body>
</html>
