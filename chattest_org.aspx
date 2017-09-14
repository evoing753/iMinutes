<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chattest.aspx.cs" Inherits="chattest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>iMinutes - 視訊會議</title>
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
                                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Names="微軟正黑體" ForeColor="#003399"></asp:Label>
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
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:Label ID="lblLoginUserMsg" runat="server" Text=""></asp:Label>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <section class="make-center">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <input type="text" id="room-id" value="<%=getLoginUser() %>" autocorrect="off" autocapitalize="off" size="20">
                                                <button id="open-room" class="btn btn-blue">新增會議室</button>
                                                <button id="join-room" class="btn btn-blue">進入會議室</button>
                                                <button id="open-or-join-room" class="btn btn-blue">自動開啟或加入會議</button>
                                                <button id="btn-leave-room" class="btn btn-danger" disabled>離開會議室 / 關閉會議</button>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <input type="text" id="input-text-chat" placeholder="Enter Text Chat" disabled>
                                                <button id="share-file" class="btn btn-blue" disabled>Share File</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div id="room-urls" style="text-align: center; display: none; background: #F1EDED; margin: 15px -10px; border: 1px solid rgb(189, 189, 189); border-left: 0; border-right: 0;"></div>
                                            <div id="chat-container">
                                                <div id="file-container"></div>
                                                <div class="chat-output"></div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div id="videos-container"></div>
                                        </div>
                                    </div>
                                </section>
                            </ContentTemplate>
                        </asp:UpdatePanel>
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

    <!-- OnlineVideo JS -->
    <script src="https://rtcmulticonnection.herokuapp.com/dist/RTCMultiConnection.min.js"></script>
    <script src="https://rtcmulticonnection.herokuapp.com/socket.io/socket.io.js"></script>
    <script src="js/getHTMLMediaElement.js"></script>
    <script src="js/FileBufferReader.js"></script>
    <script type="text/javascript">
        document.getElementById('open-room').onclick = function () {
            disableInputButtons();
            connection.open(document.getElementById('room-id').value, function () {
                showRoomURL(connection.sessionid);
            });
        };
        document.getElementById('join-room').onclick = function () {
            disableInputButtons();
            connection.join(document.getElementById('room-id').value);
        };
        document.getElementById('open-or-join-room').onclick = function () {
            disableInputButtons();
            connection.openOrJoin(document.getElementById('room-id').value, function (isRoomExists, roomid) {
                if (!isRoomExists) {
                    showRoomURL(roomid);
                }
            });
        };

        connection.open('videomeeting', function (isRoomExists, roomid) {
            if (!isRoomExists) {
                showRoomURL(roomid);
            }
        });

        document.getElementById('btn-leave-room').onclick = function () {
            this.disabled = true;
            if (connection.isInitiator) {
                // use this method if you did NOT set "autoCloseEntireSession===true"
                // for more info: https://github.com/muaz-khan/RTCMultiConnection#closeentiresession
                connection.closeEntireSession(function () {
                    document.querySelector('h1').innerHTML = 'Entire session has been closed.';
                });
            } else {
                connection.leave();
            }
        };
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        document.getElementById('share-file').onclick = function () {
            var fileSelector = new FileSelector();
            fileSelector.selectSingleFile(function (file) {
                connection.send(file);
            });
        };
        document.getElementById('input-text-chat').onkeyup = function (e) {
            if (e.keyCode != 13) return;
            // removing trailing/leading whitespace
            this.value = this.value.replace(/^\s+|\s+$/g, '');
            if (!this.value.length) return;
            connection.send(this.value);
            appendDIV(this.value);
            this.value = '';
        };
        var chatContainer = document.querySelector('.chat-output');
        function appendDIV(event) {
            var div = document.createElement('div');
            div.innerHTML = event.data || event;
            chatContainer.insertBefore(div, chatContainer.firstChild);
            div.tabIndex = 0;
            div.focus();
            document.getElementById('input-text-chat').focus();
        }
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        var connection = new RTCMultiConnection('meetroom');

        console.log('channel-id is', connection.channel);

        // this line is VERY_important
        connection.socketURL = 'https://rtcmulticonnection.herokuapp.com:443/';
        ///附加連線資訊
        connection.extra = {
            fullname: '<%=getLoginUser()%>'
        };
    ///附加連線資訊END

    connection.session = {
        audio: true,
        video: true,
        data: true
    };

    connection.sdpConstraints.mandatory = {
        OfferToReceiveAudio: true,
        OfferToReceiveVideo: true
    };

    var videosContainer = document.getElementById('videos-container');
    ///開始串流
    connection.onstream = function (event) {
        //delete event.mediaElement.id; // make sure that below DIV has unique ID in the DOM(如果有出現過的ID就刪除)

        var width = parseInt(connection.videosContainer.clientWidth / 2) - 20;
        var mediaElement = getHTMLMediaElement(event.mediaElement, {
            title: event.userid,
            buttons: ['full-screen'],
            width: width,
            showOnMouseEnter: false
        });
        var div = document.createElement('div');
        div.id = event.streamid;
        div.className = 'video-div';
        div.appendChild(event.mediaElement); // appending VIDOE to DIV
        var h2 = document.createElement('h2');
        h2.innerHTML = event.extra.fullname;
        div.appendChild(h2);
        videosContainer.appendChild(div);

        //setTimeout(function () {
        //    mediaElement.media.play();
        //}, 5000);

        mediaElement.id = event.streamid;

        //var addstream_div = document.createElement('div');
        //addstream_div.id = 'stream_button';
        //addstream_div.className = 'video-div';
        //var addbtn = document.createElement('button');
        //addbtn.id = 'btn-addStream';
        //addbtn.disabled = true;
        //addbtn.innerHTML = 'add';
        //var removebtn = document.createElement('button');
        //removebtn.id = 'btn-removeStrea';
        //removebtn.disabled = true;
        //removebtn.innerHTML = 'remove';
        //addstream_div.appendChild(addbtn);
        //addstream_div.appendChild(removebtn);
        //div.appendChild(addstream_div);
    };
    ///開始串流END
    connection.onstreamended = function (event) {
        var mediaElement = document.getElementById(event.streamid);
        if (mediaElement) {
            mediaElement.parentNode.removeChild(mediaElement);
        }
    };
    connection.onmessage = appendDIV;
    connection.filesContainer = document.getElementById('file-container');
    connection.onopen = function () {
        document.getElementById('share-file').disabled = false;
        document.getElementById('input-text-chat').disabled = false;
        document.getElementById('btn-leave-room').disabled = false;
        document.querySelector('h1').innerHTML = 'You are connected with: ' + connection.getAllParticipants().join(', ');
    };
    connection.onclose = function () {
        if (connection.getAllParticipants().length) {
            document.querySelector('h1').innerHTML = 'You are still connected with: ' + connection.getAllParticipants().join(', ');
        } else {
            document.querySelector('h1').innerHTML = 'Seems session has been closed or all participants left.';
        }
    };
    connection.onEntireSessionClosed = function (event) {
        document.getElementById('share-file').disabled = true;
        document.getElementById('input-text-chat').disabled = true;
        document.getElementById('btn-leave-room').disabled = true;
        document.getElementById('open-or-join-room').disabled = false;
        document.getElementById('open-room').disabled = false;
        document.getElementById('join-room').disabled = false;
        document.getElementById('room-id').disabled = false;
        connection.attachStreams.forEach(function (stream) {
            stream.stop();
        });
        // don't display alert for moderator
        if (connection.userid === event.userid) return;
        document.querySelector('h1').innerHTML = 'Entire session has been closed by the moderator: ' + event.userid;
    };
    connection.onUserIdAlreadyTaken = function (useridAlreadyTaken, yourNewUserId) {
        // seems room is already opened
        connection.join(useridAlreadyTaken);
    };
    function disableInputButtons() {
        document.getElementById('open-or-join-room').disabled = true;
        document.getElementById('open-room').disabled = true;
        document.getElementById('join-room').disabled = true;
        document.getElementById('room-id').disabled = true;
    }
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    function showRoomURL(roomid) {
        var roomHashURL = '#' + roomid;
        var roomQueryStringURL = '?roomid=' + roomid;
        var html = '<h2>Unique URL for your room:</h2><br>';
        html += 'Hash URL: <a href="' + roomHashURL + '" target="_blank">' + roomHashURL + '</a>';
        html += '<br>';
        html += 'QueryString URL: <a href="' + roomQueryStringURL + '" target="_blank">' + roomQueryStringURL + '</a>';
        var roomURLsDiv = document.getElementById('room-urls');
        roomURLsDiv.innerHTML = html;
        roomURLsDiv.style.display = 'block';
    }
    (function () {
        var params = {},
            r = /([^&=]+)=?([^&]*)/g;
        function d(s) {
            return decodeURIComponent(s.replace(/\+/g, ' '));
        }
        var match, search = window.location.search;
        while (match = r.exec(search.substring(1)))
            params[d(match[1])] = d(match[2]);
        window.params = params;
    })();
    var roomid = '';
    if (localStorage.getItem(connection.socketMessageEvent)) {
        roomid = localStorage.getItem(connection.socketMessageEvent);
    } else {
        roomid = connection.token();
    }
    document.getElementById('room-id').value = roomid;
    document.getElementById('room-id').onkeyup = function () {
        localStorage.setItem(connection.socketMessageEvent, this.value);
    };
    var hashString = location.hash.replace('#', '');
    if (hashString.length && hashString.indexOf('comment-') == 0) {
        hashString = '';
    }
    var roomid = params.roomid;
    if (!roomid && hashString.length) {
        roomid = hashString;
    }
    if (roomid && roomid.length) {
        document.getElementById('room-id').value = roomid;
        localStorage.setItem(connection.socketMessageEvent, roomid);
        // auto-join-room
        (function reCheckRoomPresence() {
            connection.checkPresence(roomid, function (isRoomExists) {
                if (isRoomExists) {
                    connection.join(roomid);
                    return;
                }
                setTimeout(reCheckRoomPresence, 5000);
            });
        })();
        disableInputButtons();
    }
    </script>
</body>
</html>
