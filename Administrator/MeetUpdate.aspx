<%@ Page Title="" Language="C#" MasterPageFile="~/iMasterPageAdmin.master" AutoEventWireup="true" CodeFile="MeetUpdate.aspx.cs" Inherits="Administrator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script  type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script> <%--時間選擇器--%>

    <style type="text/css">

        .auto-style8 {
            font-size: xx-large;
            font-family: 微軟正黑體;
        }
        .auto-style9 {
            font-size: large;
            font-family: 微軟正黑體;
        }
        .auto-style11 {
            color: #0000FF;
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style14 {
        text-decoration: none;
        font-size: x-large;
    }
    .auto-style16 {
        font-size: x-large;
        font-family: 微軟正黑體;
    }
        .auto-style17 {
            margin-left: 40px;
        }
        .auto-style18 {
            width: 796px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="auto-style1">
    <tr>
        <td><strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="會議列表編輯"></asp:Label>
                    &nbsp; </strong><span class="auto-style16">[</span><span class="auto-style9"><a class="auto-style14" href="MeetList.aspx">回會議列表</a></span><span class="auto-style16">]</span></td>
        <td class="auto-style18">&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:iMinutesConnectionString1 %>" SelectCommand="SELECT [meet_id], [meet_title], [start_time], [end_time], [meet_place], [meet_note], [convener] FROM [meet] WHERE ([meet_id] = @meet_id)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="meet_id" QueryStringField="mid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:iMinutesConnectionString1 %>" SelectCommand="SELECT * FROM [places]"></asp:SqlDataSource>
        </td>
        <td class="auto-style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="auto-style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="meet_id" DataSourceID="SqlDataSource1" DefaultMode="Edit" CssClass="auto-style8">
                <EditItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style16">編號</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="meet_idLabel1" runat="server" CssClass="auto-style16" Text='<%# Eval("meet_id") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16">會議標題</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="meet_titleTextBox" runat="server" CssClass="auto-style16" Text='<%# Bind("meet_title") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16">召集人</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="convenerTextBox" runat="server" CssClass="auto-style16" Text='<%# Bind("convener") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16">會議場所編號</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="meet_placeTextBox" runat="server" CssClass="auto-style16" Text='<%# Bind("meet_place") %>' TextMode="Number" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16">備註</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">
                                <asp:TextBox ID="meet_noteTextBox" runat="server" CssClass="auto-style16" Text='<%# Bind("meet_note") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16">起始時間</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="start_timeTextBox" runat="server" CssClass="auto-style16" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm'})" Text='<%# Bind("start_time") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16">結束時間</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="end_timeTextBox" runat="server" CssClass="auto-style16" Text='<%# Bind("end_time") %>' onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm'})" />
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <InsertItemTemplate>
                    meet_title:
                    <asp:TextBox ID="meet_titleTextBox" runat="server" Text='<%# Bind("meet_title") %>' />
                    <br />
                    start_time:
                    <asp:TextBox ID="start_timeTextBox" runat="server" Text='<%# Bind("start_time") %>' />
                    <br />
                    end_time:
                    <asp:TextBox ID="end_timeTextBox" runat="server" Text='<%# Bind("end_time") %>' />
                    <br />
                    meet_place:
                    <asp:TextBox ID="meet_placeTextBox" runat="server" Text='<%# Bind("meet_place") %>' />
                    <br />
                    meet_recordfile:
                    <asp:TextBox ID="meet_recordfileTextBox" runat="server" Text='<%# Bind("meet_recordfile") %>' />
                    <br />
                    meet_note:
                    <asp:TextBox ID="meet_noteTextBox" runat="server" Text='<%# Bind("meet_note") %>' />
                    <br />
                    convener:
                    <asp:TextBox ID="convenerTextBox" runat="server" Text='<%# Bind("convener") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    meet_id:
                    <asp:Label ID="meet_idLabel" runat="server" Text='<%# Eval("meet_id") %>' />
                    <br />
                    meet_title:
                    <asp:Label ID="meet_titleLabel" runat="server" Text='<%# Bind("meet_title") %>' />
                    <br />
                    start_time:
                    <asp:Label ID="start_timeLabel" runat="server" Text='<%# Bind("start_time") %>' />
                    <br />
                    end_time:
                    <asp:Label ID="end_timeLabel" runat="server" Text='<%# Bind("end_time") %>' />
                    <br />
                    meet_place:
                    <asp:Label ID="meet_placeLabel" runat="server" Text='<%# Bind("meet_place") %>' />
                    <br />
                    meet_recordfile:
                    <asp:Label ID="meet_recordfileLabel" runat="server" Text='<%# Bind("meet_recordfile") %>' />
                    <br />
                    meet_note:
                    <asp:Label ID="meet_noteLabel" runat="server" Text='<%# Bind("meet_note") %>' />
                    <br />
                    convener:
                    <asp:Label ID="convenerLabel" runat="server" Text='<%# Bind("convener") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
                </ItemTemplate>
            </asp:FormView>
        </td>
        <td class="auto-style18">
            <table class="nav-justified">
                <tr>
                    <td class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>場所編號-參照表</strong></td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style16" DataKeyNames="place_id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="600px" HorizontalAlign="Right" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="15" Width="95%">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="place_id" HeaderText="PlaceId" InsertVisible="False" ReadOnly="True" SortExpression="place_id" />
                    <asp:BoundField DataField="place_name" HeaderText="PlaceName" SortExpression="place_name" />
                    <asp:BoundField DataField="place_location" HeaderText="Location" SortExpression="place_location" />
                    <asp:BoundField DataField="place_capacity" HeaderText="Capacity" SortExpression="place_capacity" />
                    <asp:BoundField DataField="organization" HeaderText="Organization" SortExpression="organization" />
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
    <tr>
        <td>
            <strong>
                    <asp:Label ID="lblMessage" runat="server" CssClass="auto-style11" Text="Label"></asp:Label>
                    </strong>
        </td>
        <td class="auto-style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" OnClick="Button1_Click" Text="修改" />
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style16" onclientclick="history.back(); return false;" Text="取消" OnClick="Button3_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" OnClick="Button2_Click" Text="刪除" Width="67px" />
        </td>
        <td class="auto-style18">
                    &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="auto-style18">
            &nbsp;</td>
    </tr>
</table>


</asp:Content>

