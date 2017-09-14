<%@ Page Language="C#" AutoEventWireup="true" CodeFile="onLineVideo.aspx.cs" Inherits="onLineVideo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
   
    <link rel="stylesheet" type="text/css" href="/css/result-light.css"/>
        

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
    <title></title>

    <script type="text/javascript">
        window.onload = function () {
            var connection = new RTCMultiConnection();

            // this line is VERY_important
            connection.socketURL = 'https://rtcmulticonnection.herokuapp.com:443/';

            connection.extra = {
                fullname: prompt('Please Enter your Name: ')
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


</head>
<body>
     <script src="https://rtcmulticonnection.herokuapp.com/dist/RTCMultiConnection.min.js"></script>
<script src="https://rtcmulticonnection.herokuapp.com/socket.io/socket.io.js"></script>
    <form id="form1" runat="server">
    <div>        
    
        <div id="videos-container"></div>
        <%--<script>
            // tell the embed parent frame the height of the content
            if (window.parent && window.parent.parent) {
                window.parent.parent.postMessage(["resultsFrame", {
                    height: document.body.getBoundingClientRect().height,
                    slug: "tzrqcpox"
                }], "*")
            }
        </script>--%>
    </div>
        
    </form>
</body>
</html>
