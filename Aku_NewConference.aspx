<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Aku_NewConference.aspx.cs" Inherits="Aku_NewConference" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://bootstraptaste.com" />

    <title>iMinutes - 新增會議</title>

     <!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet" />
<link href="css/flexslider.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" />

<script  type="text/javascript" src="My97DatePicker/WdatePicker.js"></script> <%--時間選擇器--%>


<!-- Theme skin -->
<link href="skins/default.css" rel="stylesheet" />

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
                        <a class="navbar-brand" href="index.html"><span>i</span>Minutes</a>
                    </div>
                    <div class="navbar-collapse collapse ">
                        <ul class="nav navbar-nav">
                            <li><a href="index.html">首頁</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="true">會議相關</a>
                                <ul class="dropdown-menu">
                                        <li><a href="Aku_NewConference.aspx">新增會議</a></li>
                                        <li><a href="calendar.aspx">行程管理</a></li>
								        <li><a href="chattest.aspx">線上會議</a></li>
                                        <li><a href="record.aspx">會議記錄</a></li>
                                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"></asp:Label>
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

                            <li><a href="login.html">LOGIN/JOIN US</a></li>
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
                            <li class="active">新增會議</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <!--start-->
        <section id="content" style="background-color:lightgrey">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h4>新增會議</h4>
                        
                        <form id="contactform" method="post" name="send-contact" runat="server"> <%--移除class可入值--%><%--<form id="form1" runat="server" method="post">--%>
                            <div id="sendmessage">
                                資料已送出
                            </div>


                            <div class="row">
                                <div class="col-lg-4 field">
                                    <label class="label-info">會議名稱 :</label>                                    <%--<input type="text" name="meetingName" placeholder="請輸入會議名稱" />--%>
                                    <asp:TextBox ID="txtName" runat="server" placeholder="請輸入會議名稱" AutoPostBack="True" ></asp:TextBox>
                                </div>

                                <div class="col-lg-4 field">
                                    <label class="label-info">會議編號 :</label>                                    <%--<input type="text" name="meetingName" placeholder="2017-08-01" readonly="readonly" />--%>
                                    <asp:TextBox ID="txtNumber" runat="server" placeholder="年-月-日" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-4 field">
                                    <label class="label-info">發起人員 :</label>

                                    <%--<asp:TextBox ID="txtConvener" runat="server"></asp:TextBox>--%>

                                    <asp:Label ID="lblConvener" runat="server" Text="label" Font-Bold="True" Font-Names="微軟正黑體" ForeColor="#003399"></asp:Label>
                                </div>

                                <div class="col-lg-4 field">

                                    <label class="label-info">會議預計開始時間 :</label>
                                   <asp:TextBox ID="txtStartTime" runat="server" CssClass="Wdate" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd  HH:mm'})" ForeColor="Red"></asp:TextBox>

                                </div>

                                <div class="col-lg-4 field">
                                    
                                    <label class="label-info">會議預計結束時間 :</label>
                                    <asp:TextBox ID="txtEndTime" runat="server" CssClass="Wdate" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd  HH:mm'})" ForeColor="Red"></asp:TextBox>

                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-4">
                                    <label class="label-info">會議地點 :</label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="place_name" DataValueField="place_name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                        <asp:ListItem Value="">請選擇</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:iMinutes(ec2amaz) %>" SelectCommand="SELECT DISTINCT [place_name] FROM [places]"></asp:SqlDataSource>
                                    <asp:TextBox ID="txtPlaceName" runat="server" placeholder="請選擇地點" data-rule="maxlen:4" data-msg="Please enter at least 4 chars" Width="215px"></asp:TextBox>
                                </div>

                                <div class="col-lg-4">
                                    <label class="label-info">參與人員 :</label> 

                                   <asp:Label ID="lblOrg" runat="server" Text="組織" Font-Bold="True" Font-Names="微軟正黑體" ForeColor="#003399"></asp:Label>
                                    <asp:CheckBoxList ID="chkOrgUser" runat="server" DataSourceID="LinqDataSource1" DataTextField="user_name" DataValueField="user_id" RepeatColumns="4" OnSelectedIndexChanged="chkOrgUser_SelectedIndexChanged" Font-Names="微軟正黑體">
                                    </asp:CheckBoxList>
  
                                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (user_id, user_name)" TableName="users" Where="organization == @organization1">
                                        <WhereParameters>
                                            <asp:ControlParameter ControlID="lblOrg" Name="organization1" PropertyName="Text" Type="String" />
                                        </WhereParameters>
                                    </asp:LinqDataSource>
  
                                    <asp:ListBox ID="listYesUser" runat="server" Height="95px" Width="397px"></asp:ListBox>

                                    <asp:Label ID="lblMsgChooseGood" runat="server" Text="Label"></asp:Label>

                                </div>
                                <!-- Google Map -->
                                <%--<div class="map" style="text-align:center">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d4193.801663006522!2d120.2929158882637!3d22.62817490934853!3m2!1i1024!2i768!4f13.1!5e0!3m2!1szh-TW!2s!4v1501558354463"></iframe>
                                </div>
                            </div>--%>

                            <div class="row">
                                <div class="col-lg-12">
                                    
                                </div>
                            </div>



                            <div class="row">
                                <div class="col-lg-12">
                                    <label class="label-info">會議備註 :</label>
                                </div>
                                <div class="col-lg-12 margintop10 field">
                                    <%--<textarea rows="5" name="message" class="input-block-level" placeholder="會議備註內容..." data-rule="required"></textarea>--%>
                                    <asp:TextBox ID="txtNote" runat="server" Rows="5" CssClass="input-block-level" placeholder="會議備註內容..." data-rule="required" Font-Names="微軟正黑體" Height="104px" MaxLength="500" TextMode="MultiLine" Width="1152px"></asp:TextBox>
                                    <div class="validation">
                                    </div>
                                    <p>
                                        <asp:Button ID="btnSend" runat="server"  CssClass="btn btn-theme margintop10 pull-left" Text="確認送出" onclick="btnSend_Click"/>
                                        <asp:Button ID="Button1" runat="server"  CssClass="btn btn-theme margintop10 pull-left" Text="確認送出" onclick="Button1_Click"/>
                                        <span class="pull-right margintop20" style="color:#FF0000">* 號為必填!</span>
                                    </p>
                                    <p>
                                        &nbsp;</p>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>







        <footer>
            <div class="container">

                <div class="row">

                    <div class="col-lg-3">
                        <div class="widget">
                            <h5 class="widgetheading">Get in touch with us</h5>
                            <address>
                                <strong>iMinutes</strong><br />
                                高雄市xx區xx路xx號
                            </address>
                            <p>
                                <i class="icon-phone"></i> (06) 456-7890 - (06) 987-6543 <br />
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
<a href="#" class="scrollup"><i class="fa fa-angle-up active" title="返回頂部"></i></a>
<!-- javascript
    ================================================== -->
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

</body>
</html>
