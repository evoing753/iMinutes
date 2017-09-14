<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newConference.aspx.cs" Inherits="newConference" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    <%--<link href="/css/bootstrap.min.css" rel="stylesheet"/>   整段照著引用即可
    <link type="text/css" rel="stylesheet" href="/css/bootstrap-datetimepicker.css" />
    <link type="text/css" rel="stylesheet" href ="/css/jquery-ui.css"/>    

    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/moment-with-locales.js"> </script>
    <script src ="/js/bootstrap-datetimepicker.js"></script>--%>
    
    <%--<script>  時間選擇器
    $(document).ready(function () {
        $('#<%=TextBox2.ClientID%>').datetimepicker();
        $('#<%=TextBox3.ClientID%>').datetimepicker();

        });
    </script>--%>   
        
    <style type="text/css">
        #form1 {
            height: 459px;
        }
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="會議名稱:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="會議編號:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="發起人員::"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="user_name" DataValueField="user_name">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="記錄人員:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="user_name" DataValueField="user_name">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="與會人員:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="user_name" DataValueField="user_name">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="會議地點:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="place_location" DataValueField="place_name">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
            
            <tr>
                <td>
                   <%-- <div style="position:relative">   時間選擇器
                    <asp:Label ID="Label7" runat="server" Text="會議開始時間:"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="會議結束時間:"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </div>--%>
                </td>
            </tr>
            
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="會議檔案上傳:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="會議備註:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確認送出" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:iMinutesTest %>" SelectCommand="SELECT [user_name] FROM [users]"></asp:SqlDataSource>
&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:iMinutesTest %>" SelectCommand="SELECT [place_name], [place_location], [organization], [place_capacity] FROM [places]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br />
    </form>
</body>
    
</html>
