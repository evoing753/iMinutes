<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlaceSchList.aspx.cs" Inherits="Administrator_PlaceSchList" MasterPageFile="~/iMasterPageAdmin.master"%>

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
            color: #000000;
        }
        .auto-style9 {
            height: 20px;
        }
        .auto-style10 {
            font-size: large;
            font-family: 微軟正黑體;
        }
        .auto-style11 {
            height: 20px;
            font-size: large;
            font-family: 微軟正黑體;
        }
        .auto-style12 {
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            font-size: x-large;
            font-family: 微軟正黑體;
            color: #CC0000;
        }
        .auto-style17 {
            width: 350px;
        }
        .auto-style19 {
            font-size: x-large;
        }
        .auto-style20 {
            width: 364px;
        }
        </style>

    <div>
    
        <table class="auto-style1">
            <tr>
                <td><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="場所排程"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <table class="auto-style15">
                        <tr class="auto-style19">
                            <td class="auto-style17">組織名稱</td>
                            <td class="auto-style20">會議室名稱</td>
                            <td>起訖日期</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">
                    <asp:TextBox ID="txtOrganization" runat="server" CssClass="auto-style12" Height="36px"></asp:TextBox>
                            </td>
                            <td class="auto-style20">
                    <asp:TextBox ID="txtPlaceName" runat="server" CssClass="auto-style12" Height="36px"></asp:TextBox>
                            </td>
                            <td>
                    <asp:TextBox ID="txtStartTime" runat="server" CssClass="auto-style12" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})" Height="36px" Width="160px"></asp:TextBox>
                            &nbsp;-&nbsp;
                    <asp:TextBox ID="txtEndTime" runat="server" CssClass="auto-style12" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})" Height="36px" Width="160px"></asp:TextBox>
                            </td>
                        </tr>
                        </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="查詢" CssClass="auto-style12" />
                    <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="重整" CssClass="auto-style12" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <strong>
                    <asp:Label ID="lblMessage" runat="server" Text="Label" CssClass="auto-style16"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style12" Width="100%" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
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