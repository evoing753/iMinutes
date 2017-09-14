<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="(X)PlaceSchUpdate.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            font-family: 微軟正黑體;
        }
        .auto-style7 {
            color: #000000;
        }
        .auto-style8 {
            color: #3366FF;
        }
        .auto-style9 {
            font-size: x-large;
            font-family: 微軟正黑體;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td><strong><asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="場所排程編輯" style="font-size: xx-large; font-family: 微軟正黑體"></asp:Label>
                    &nbsp;</strong><span class="auto-style14"><span class="auto-style6"><span class="auto-style16"><span class="auto-style5"><a class="auto-style7" href="MemberList.aspx">[</a></span></span><span class="auto-style5"><a class="auto-style8" href="PlaceSchList.aspx">回場所排程</a></span></span><a class="auto-style7" href="MemberList.aspx"><span class="auto-style5">]</span></a></span></td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:iMinutesConnectionString1 %>" SelectCommand="SELECT [meet_id], [meet_title], [start_time], [end_time], [meet_place] FROM [meet] WHERE ([meet_id] = @meet_id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="meet_id" QueryStringField="psid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:FormView ID="FormView1" runat="server" CssClass="auto-style9" DataKeyNames="meet_id" DataSourceID="SqlDataSource1" DefaultMode="Edit">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        meet_id:
                        <asp:Label ID="meet_idLabel1" runat="server" Text='<%# Eval("meet_id") %>' />
                        <br />
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
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
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

                    </ItemTemplate>
                </asp:FormView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

