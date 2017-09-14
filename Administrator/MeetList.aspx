<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MeetList.aspx.cs" Inherits="Administrator_MeetList" MasterPageFile="~/iMasterPageAdmin.master"%>

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
            font-size: x-large;
            font-family: 微軟正黑體;
            color: #CC0000;
        }
        .auto-style20 {
            width: 100%;
        }
        .auto-style25 {
        font-size: x-large;
        font-family: 微軟正黑體;
    }
        .auto-style28 {
            font-size: x-large;
            font-family: 微軟正黑體;
            width: 339px;
        }
        .auto-style29 {
            width: 339px;
        }
        .auto-style30 {
            font-size: x-large;
            font-family: 微軟正黑體;
            width: 342px;
        }
        .auto-style31 {
            width: 342px;
        }
        

        </style>

    <div>
    
        <table class="auto-style1">
            <tr>
                <td><strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="會議列表"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style20">
                        <tr>
                            <td class="auto-style30">會議標題</td>
                            <td class="auto-style28">召集人</td>
                            <td class="auto-style25">起訖日期</td>
                        </tr>
                        <tr>
                            <td class="auto-style31">
                                <asp:TextBox ID="txtMeetTitle" runat="server" CssClass="auto-style25"></asp:TextBox>
                            </td>
                            <td class="auto-style29">
                                <asp:TextBox ID="txtConvener" runat="server" CssClass="auto-style25"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtStartTime" runat="server" CssClass="auto-style25" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})" Width="160px"></asp:TextBox>
                            &nbsp;-&nbsp;
                                <asp:TextBox ID="txtEndTime" runat="server" CssClass="auto-style25" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})" Width="160px"></asp:TextBox>
                            </td>
                        </tr>
                        </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="查詢" CssClass="auto-style25" />
                                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="重整" CssClass="auto-style25" />
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Label ID="lblMessage" runat="server" Text="Label" CssClass="auto-style11"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style25" ForeColor="#333333" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" Width="98%">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/picture/Edit.png" NavigateUrl='<%# Eval("meet_id", "MeetUpdate.aspx?mid={0}") %>' Text="edit" Width="50px"></asp:HyperLink>
                                </ItemTemplate>
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