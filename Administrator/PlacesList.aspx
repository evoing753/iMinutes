<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlacesList.aspx.cs" Inherits="Administrator_PlacesList" MasterPageFile="~/iMasterPageAdmin.master"%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style9 {
            font-family: 微軟正黑體;
        }
        .auto-style10 {
            font-size: x-large;
            font-family: 微軟正黑體;
            color: #CC0000;
        }
        .auto-style11 {
            font-size: x-large;
            font-family: 微軟正黑體;
            width: 354px;
        }
        .auto-style12 {
            width: 354px;
        }
        .auto-style13 {
            text-decoration: none;
            font-size: x-large;
        }
        .auto-style14 {
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style15 {
            font-size: x-large;
            font-family: 微軟正黑體;
            width: 350px;
        }
        .auto-style16 {
            width: 350px;
        }
        .auto-style17 {
            height: 28px;
        }
        .auto-style18 {
            text-align: right;
            height: 20px;
            font-size: xx-large;
            font-family: 微軟正黑體;
        }
        </style>

    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="3">
                    <strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style18" Text="會議場所"></asp:Label>
                    &nbsp;</strong><span class="auto-style14">[</span><a class="auto-style13" href="PlacesAdd.aspx"><span class="auto-style9">新增會議</span><span class="auto-style14">場所</span></a><span class="auto-style14">]</span></td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style11">
                    組織名稱</td>
                <td class="auto-style15">
                    會議室名稱</td>
                <td class="auto-style14">
                    容納人數</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:TextBox ID="txtOrganization" runat="server" CssClass="auto-style14"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtPlaceName" runat="server" CssClass="auto-style14"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtCapacity" runat="server" CssClass="auto-style14" Width="70px" TextMode="Number"></asp:TextBox>
                &nbsp;-&nbsp;
                    <asp:TextBox ID="txtCapacity0" runat="server" CssClass="auto-style14" Width="70px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="查詢" CssClass="auto-style14" />
                    <asp:Button ID="btnReset" runat="server" Text="重整" OnClick="btnReset_Click" CssClass="auto-style14" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <strong>
                    <asp:Label ID="lblMessage" runat="server" Text="Label" CssClass="auto-style10"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style14" ForeColor="#333333" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" Width="85%">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/picture/Edit.png" NavigateUrl='<%# Eval("place_id", "PlacesUpdate.aspx?pid={0}") %>' Text="edit"></asp:HyperLink>
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
