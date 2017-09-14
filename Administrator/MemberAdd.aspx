<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberAdd.aspx.cs" Inherits="Administrator_MemberAdd" MasterPageFile="~/iMasterPageAdmin.master"%>

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
        .auto-style12 {
            font-size: medium;
            font-family: 微軟正黑體;
        }
        .auto-style11 {
            height: 20px;
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style16 {
            color: #0000FF;
            font-size: x-large;
        }
        .auto-style22 {
            font-size: x-large;
            font-family: 微軟正黑體;
            height: 24px;
        }
        .auto-style23 {
            height: 35px;
        }
        .auto-style26 {
            font-family: 微軟正黑體;
        }
        .auto-style27 {
            font-size: x-large;
        }
        .auto-style28 {
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style29 {
            color: #CC0000;
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style30 {
            color: #CC0000;
        }
    </style>

    <div>
    
        <table class="auto-style1">
            <tr>
                <td><strong><asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="新增會員"></asp:Label>
                    &nbsp;</strong><span class="auto-style26"><span class="auto-style27">[<a class="auto-style10" href="MemberList.aspx">回會員資料</a></span></span><span class="auto-style27">]</span></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                            <td class="auto-style28">姓名<span class="auto-style30">*</span></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtName" runat="server" CssClass="auto-style28" Text='<%# Bind("user_name") %>' />
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" CssClass="auto-style29" ErrorMessage="姓名不可空白"></asp:RequiredFieldValidator>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style11">電話</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="auto-style28" Text='<%# Bind("user_phone") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style22">帳號<span class="auto-style30">*</span></td>
                        </tr>
                        <tr>
                            <td class="auto-style23">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style28" Text='<%# Bind("user_mail") %>' />
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style29" Display="Dynamic" ErrorMessage="帳號不可空白"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style29" ErrorMessage="電子郵件格式不符" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style28">密碼<span class="auto-style30">*</span></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtPwd" runat="server" CssClass="auto-style28" Text='<%# Bind("user_pwd") %>' TextMode="Password" />
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPwd" runat="server" ControlToValidate="txtPwd" CssClass="auto-style29" Display="Dynamic" ErrorMessage="密碼不可空白"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidatorPwd" runat="server" ControlToCompare="txtConfirm" ControlToValidate="txtPwd" CssClass="auto-style29" Display="Dynamic" ErrorMessage="密碼與確認密碼不符"></asp:CompareValidator>
                                <asp:CustomValidator ID="CustomValidatorPwd" runat="server" ControlToValidate="txtPwd" CssClass="auto-style29" Display="Dynamic" ErrorMessage="密碼必須含有一個英文字元" OnServerValidate="CustomValidatorPwd_ServerValidate"></asp:CustomValidator>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style28"><span class="auto-style28">確認密碼</span><span class="auto-style29">*</span></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtConfirm" runat="server" CssClass="auto-style28" Text='<%# Bind("user_pwd") %>' TextMode="Password" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">組織名稱</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtOrganization" runat="server" CssClass="auto-style28" Text='<%# Bind("organization") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28"><span class="auto-style27">管理員&nbsp;
                                </span>
                                <asp:CheckBox ID="isAdminCheckBox" runat="server" Checked='<%# Bind("isAdmin") %>' CssClass="auto-style28" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style28">
                                <strong>
                                <asp:Label ID="lblMessage" runat="server" CssClass="auto-style16" Text="Label"></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:Button ID="btnAdd" runat="server" CssClass="auto-style28" OnClick="btnAdd_Click" Text="新增" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                </td>
            </tr>
        </table>
    
    </div>

</asp:Content>
