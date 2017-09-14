<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Aku_Update_ResetPasswd.aspx.cs" Inherits="Aku_Update_ResetPasswd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
            font-family: 微軟正黑體;
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1"><strong>You password has been reset</strong><strong style="color: #000000"><br />
        <br />
        新密碼(New Password)： 
        <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        確認新密碼(Confirm Password)：<asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password"></asp:TextBox>
                                     <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ControlToCompare="txtNewPwd"
                                            ControlToValidate="txtConfirmPwd" ErrorMessage="密碼與確認密碼不一致(Password does not match)" Font-Names="Rockwell"
                                            ForeColor="Red"></asp:CompareValidator>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Height="32px" OnClick="btnSubmit_Click" Text="確  認" Width="103px" />
         <asp:LinkButton ID="LinkBtnBack" runat="server" OnClick="LinkBtnBack_Click">Back to Login</asp:LinkButton>
        <br />
        </strong></span>
        <br />
    
    </div>
    </form>
</body>
</html>
