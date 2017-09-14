<%@ Page Language="C#" AutoEventWireup="true" CodeFile="(X)MemberSchList.aspx.cs" Inherits="Administrator_MemberSchList" MasterPageFile="~/Administrator/MasterPageAdmin.master"%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style8 {
            font-size: xx-large;
            font-family: 微軟正黑體;
        }
        .auto-style9 {
            font-size: large;
            font-family: 微軟正黑體;
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            font-size: x-large;
            font-family: 微軟正黑體;
            color: #FF0000;
        }
        .auto-style13 {
            width: 294px;
        }
        .auto-style14 {
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style15 {
            font-size: x-large;
        }
        </style>

    <div>
    
        <table class="auto-style1">
            <tr>
                <td><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="會員行程"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <table class="auto-style11">
                        <tr class="auto-style15">
                            <td class="auto-style13">姓名</td>
                            <td>會議室地點</td>
                        </tr>
                        <tr>
                            <td class="auto-style13">
                                <asp:TextBox ID="txtName" runat="server" CssClass="auto-style14" onClick="WdatePicker({el:this,dateFmt:'MM-dd'})"></asp:TextBox>
                            </td>
                            <td>
                    <asp:TextBox ID="txtLocation" runat="server" CssClass="auto-style14"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="auto-style15">
                            <td class="auto-style13">起始時間</td>
                            <td>結束時間</td>
                        </tr>
                        <tr>
                            <td class="auto-style13">
                    <asp:TextBox ID="txtStartTime" runat="server" CssClass="auto-style14"></asp:TextBox>
                            </td>
                            <td>
                    <asp:TextBox ID="txtEndTime" runat="server" CssClass="auto-style14"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                                &nbsp;</td>
            </tr>
            <tr>
                <td>
                                <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="查詢" CssClass="auto-style14" />
                                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="重整" CssClass="auto-style14" />
                            </td>
            </tr>
            <tr>
                <td>
                                <strong>
                                <asp:Label ID="lblMessage" runat="server" Text="Label" CssClass="auto-style12"></asp:Label>
                                </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style14" ForeColor="#333333" GridLines="None">
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
