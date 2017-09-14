<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberList.aspx.cs" Inherits="Administrator_MemberList" MasterPageFile="~/iMasterPageAdmin.master"%>

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
            font-family: 微軟正黑體;
        }
        .auto-style13 {
            font-family: 微軟正黑體;
            font-size: large;
        }
        .auto-style14 {
            text-decoration: none;
        }
        .auto-style15 {
            text-align: left;
            width: 170px;
        }
        .auto-style16 {
            width: 164px;
        }
        .auto-style18 {
            text-align: left;
            font-size: large;
            font-family: 微軟正黑體;
        }
        .auto-style20 {
            text-align: left;
            width: 160px;
        }
        .auto-style21 {
            text-align: left;
            width: 170px;
            font-size: large;
            font-family: 微軟正黑體;
        }
        .auto-style22 {
        font-family: 微軟正黑體;
        font-size: x-large;
        color: #CC0000;
    }
        .auto-style23 {
            font-family: 微軟正黑體;
            font-size: x-large;
        }
        .auto-style24 {
            text-align: left;
            width: 170px;
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style25 {
            text-align: left;
            width: 164px;
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style26 {
            text-align: left;
            width: 160px;
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        </style>

    <div>
    
        <table class="auto-style1">
            <tr>
                <td><strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="會員資料"></asp:Label>
                    <span class="auto-style9">&nbsp;</span></strong><span class="auto-style23">[<a class="auto-style14" href="MemberAdd.aspx">新增會員</a>]</span></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style25">姓名</td>
                            <td class="auto-style26">帳號</td>
                            <td class="auto-style24">組織名稱</td>
                            <td class="auto-style21">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">
                                <asp:TextBox ID="txtName" runat="server" CssClass="auto-style23" Text='<%# Bind("user_name") %>' />
                                </td>
                            <td class="auto-style20">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style23" Text='<%# Bind("user_mail") %>' />
                                </td>
                            <td class="auto-style15">
                                <asp:TextBox ID="txtOrganization" runat="server" CssClass="auto-style23" Text='<%# Bind("organization") %>' />
                                </td>
                            <td class="auto-style15">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18" colspan="4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="查詢" CssClass="auto-style23" />
                                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="重整" CssClass="auto-style23" />
                                &nbsp;
                                <strong>
                                &nbsp;
                                </strong><span class="auto-style13">&nbsp; </span>
                                </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                &nbsp;</td>
                        </tr>
                        </table>
                </td>
            </tr>
            <tr>
                <td>
                                <strong>
                                <asp:Label ID="lblMessage" runat="server" Text="Label" CssClass="auto-style22"></asp:Label>
                                </strong>
                            </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" CssClass="auto-style23" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" Width="100%">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/picture/Edit.png" NavigateUrl='<%# Eval("user_id", "MemberUpdate.aspx?uid={0}") %>' Text="Edit" ToolTip="編輯該筆資料"></asp:HyperLink>
                                </ItemTemplate>
                                <ItemStyle Width="50px" />
                            </asp:TemplateField>
                        </Columns>
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
