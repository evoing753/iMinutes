<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MeetMemberList.aspx.cs" Inherits="Administrator_MeetMemberList" MasterPageFile="~/iMasterPageAdmin.master"%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script  type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script> <%--時間選擇器--%>

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style8 {
            font-size: xx-large;
            font-family: 微軟正黑體;
        }
        .auto-style11 {
            font-size: large;
            font-family: 微軟正黑體;
        }
        .auto-style13 {
            width: 100%;
        }
        .auto-style10 {
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style14 {
            width: 344px;
        }
        .auto-style15 {
            font-size: x-large;
            font-family: 微軟正黑體;
            color: #CC0000;
        }
        .auto-style16 {
            font-size: x-large;
        }
        .auto-style17 {
            width: 338px;
        }
        </style>

    <div>
    
        <table class="auto-style1">
            <tr>
                <td><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="會議紀錄"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <table class="auto-style13">
                        <tr class="auto-style16">
                            <td class="auto-style14">會議標題</td>
                            <td class="auto-style17">姓名</td>
                            <td>起訖日期</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                                <asp:TextBox ID="txtMeetTitle" runat="server" CssClass="auto-style10"></asp:TextBox>
                            </td>
                            <td class="auto-style17">
                                <asp:TextBox ID="txtName" runat="server" CssClass="auto-style10"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtStartTime" runat="server" CssClass="auto-style10" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})" Width="160px"></asp:TextBox>
                            &nbsp;-&nbsp;
                                <asp:TextBox ID="txtEndTime" runat="server" CssClass="auto-style10" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})" Width="160px"></asp:TextBox>
                            </td>
                        </tr>
                        </table>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="查詢" CssClass="auto-style10" />
                    <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="重整" CssClass="auto-style10" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <strong>
                    <asp:Label ID="lblMessage" runat="server" Text="Label" CssClass="auto-style15"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style10" ForeColor="#333333" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="2" Width="100%">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
            </table>
    
    </div>

</asp:Content>

