<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberUpdate.aspx.cs" Inherits="Administrator_MemberUpdate" MasterPageFile="~/iMasterPageAdmin.master"%>

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
        .auto-style10 {
            text-decoration: none;
        }
        .auto-style11 {
            color: #0000FF;
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style14 {
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style17 {
            color: #3366FF;
        }
        .auto-style18 {
            color: #000000;
        }
    </style>

    <div>
    
        <table class="auto-style1">
            <tr>
                <td><strong><asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="會員編輯"></asp:Label>
                    &nbsp;</strong><span class="auto-style14"><span class="auto-style18"><a href="http://"> </a>[</span><span class="auto-style17"><a class="auto-style10" href="MemberList.aspx">回會員資料</a></span><span class="auto-style18">]</span></span></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:iMinutesConnectionString1 %>" DeleteCommand="DELETE FROM [users] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [users] ([user_mail], [user_pwd], [user_name], [user_phone], [isAdmin], [organization]) VALUES (@user_mail, @user_pwd, @user_name, @user_phone, @isAdmin, @organization)" SelectCommand="SELECT [user_id], [user_mail], [user_pwd], [user_name], [user_phone], [isAdmin], [organization] FROM [users] WHERE ([user_id] = @user_id)" UpdateCommand="UPDATE [users] SET [user_mail] = @user_mail, [user_pwd] = @user_pwd, [user_name] = @user_name, [user_phone] = @user_phone, [isAdmin] = @isAdmin, [organization] = @organization WHERE [user_id] = @user_id">
                        <DeleteParameters>
                            <asp:Parameter Name="user_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="user_mail" Type="String" />
                            <asp:Parameter Name="user_pwd" Type="String" />
                            <asp:Parameter Name="user_name" Type="String" />
                            <asp:Parameter Name="user_phone" Type="String" />
                            <asp:Parameter Name="isAdmin" Type="Boolean" />
                            <asp:Parameter Name="organization" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:QueryStringParameter Name="user_id" QueryStringField="uid" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="user_mail" Type="String" />
                            <asp:Parameter Name="user_pwd" Type="String" />
                            <asp:Parameter Name="user_name" Type="String" />
                            <asp:Parameter Name="user_phone" Type="String" />
                            <asp:Parameter Name="isAdmin" Type="Boolean" />
                            <asp:Parameter Name="organization" Type="String" />
                            <asp:Parameter Name="user_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:FormView ID="FormView1" runat="server" CssClass="auto-style14" DataKeyNames="user_id" DataSourceID="SqlDataSource1" DefaultMode="Edit">
                        <EditItemTemplate>
                            <table class="auto-style12">
                                <tr>
                                    <td>編號</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="user_idLabel1" runat="server" Text='<%# Eval("user_id") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>姓名</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="user_nameTextBox" runat="server" Text='<%# Bind("user_name") %>' CssClass="auto-style9" style="font-size: x-large; font-family: 微軟正黑體" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>電話</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="user_phoneTextBox" runat="server" Text='<%# Bind("user_phone") %>' CssClass="auto-style9" style="font-size: x-large; font-family: 微軟正黑體" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>帳號</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="user_mailTextBox" runat="server" Text='<%# Bind("user_mail") %>' CssClass="auto-style9" style="font-size: x-large; font-family: 微軟正黑體" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>密碼</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="user_pwdTextBox" runat="server" Text='<%# Bind("user_pwd") %>' CssClass="auto-style9" style="font-size: x-large; font-family: 微軟正黑體" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>組織</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="organizationTextBox" runat="server" Text='<%# Bind("organization") %>' CssClass="auto-style9" style="font-size: x-large; font-family: 微軟正黑體" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>管理員&nbsp;
                                        <asp:CheckBox ID="isAdminCheckBox" runat="server" Checked='<%# Bind("isAdmin") %>' />
                                    </td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            user_mail:
                            <asp:TextBox ID="user_mailTextBox" runat="server" Text='<%# Bind("user_mail") %>' />
                            <br />
                            user_pwd:
                            <asp:TextBox ID="user_pwdTextBox" runat="server" Text='<%# Bind("user_pwd") %>' />
                            <br />
                            user_name:
                            <asp:TextBox ID="user_nameTextBox" runat="server" Text='<%# Bind("user_name") %>' />
                            <br />
                            user_phone:
                            <asp:TextBox ID="user_phoneTextBox" runat="server" Text='<%# Bind("user_phone") %>' />
                            <br />
                            isAdmin:
                            <asp:CheckBox ID="isAdminCheckBox" runat="server" Checked='<%# Bind("isAdmin") %>' />
                            <br />
                            organization:
                            <asp:TextBox ID="organizationTextBox" runat="server" Text='<%# Bind("organization") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            user_id:
                            <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                            <br />
                            user_mail:
                            <asp:Label ID="user_mailLabel" runat="server" Text='<%# Bind("user_mail") %>' />
                            <br />
                            user_pwd:
                            <asp:Label ID="user_pwdLabel" runat="server" Text='<%# Bind("user_pwd") %>' />
                            <br />
                            user_name:
                            <asp:Label ID="user_nameLabel" runat="server" Text='<%# Bind("user_name") %>' />
                            <br />
                            user_phone:
                            <asp:Label ID="user_phoneLabel" runat="server" Text='<%# Bind("user_phone") %>' />
                            <br />
                            isAdmin:
                            <asp:CheckBox ID="isAdminCheckBox" runat="server" Checked='<%# Bind("isAdmin") %>' Enabled="false" />
                            <br />
                            organization:
                            <asp:Label ID="organizationLabel" runat="server" Text='<%# Bind("organization") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
                        </ItemTemplate>
                    </asp:FormView>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <strong>
                    <asp:Label ID="lblMessage" runat="server" CssClass="auto-style11" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" OnClick="Button1_Click" Text="修改" />
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" onclientclick="history.back(); return false;" Text="取消" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" OnClick="Button2_Click" Text="刪除" Width="70px" />
                </td>
            </tr>
            </table>
    
    </div>

</asp:Content>
