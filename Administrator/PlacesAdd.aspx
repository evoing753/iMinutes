<%@ Page Title="" Language="C#" MasterPageFile="~/iMasterPageAdmin.master" AutoEventWireup="true" CodeFile="PlacesAdd.aspx.cs" Inherits="Administrator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style7 {
            font-size: xx-large;
            font-family: 微軟正黑體;
            color: #000000;
        }
        .auto-style8 {
            font-family: 微軟正黑體;
        }
        .auto-style16 {
            color: #0000FF;
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style18 {
            text-decoration: none;
            font-size: x-large;
        }
        .auto-style19 {
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style20 {
            color: #CC0000;
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style22 {
            color: #000000;
        }
        .auto-style23 {
            color: #CC0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="auto-style1">
        <tr>
            <td>
                    <strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="新增會議場所"></asp:Label>
                    &nbsp;</strong><span class="auto-style19">[</span><a class="auto-style18" href="PlacesList.aspx"><span class="auto-style8">回會議</span><span class="auto-style19">場所</span></a><span class="auto-style19">]</span></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">場所名稱<span class="auto-style23">*</span></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtPlaceName" runat="server" CssClass="auto-style19"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtPlaceName" CssClass="auto-style20" ErrorMessage="場所名稱不可空白"></asp:RequiredFieldValidator>
                                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">地點<span class="auto-style23">*</span></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtLocation" runat="server" CssClass="auto-style19"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName0" runat="server" ControlToValidate="txtLocation" CssClass="auto-style20" ErrorMessage="地點不可空白"></asp:RequiredFieldValidator>
                                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">容納人數<span class="auto-style23">*</span></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtCapacity" runat="server" CssClass="auto-style19" TextMode="Number"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName1" runat="server" ControlToValidate="txtCapacity" CssClass="auto-style20" ErrorMessage="容納人數不可空白"></asp:RequiredFieldValidator>
                                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">組織<span class="auto-style22">名稱</span></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtOrganization" runat="server" CssClass="auto-style19"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                                <strong>
                                <asp:Label ID="lblMessage" runat="server" CssClass="auto-style16" Text="Label"></asp:Label>
                                </strong>
                            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                                &nbsp;</td>
        </tr>
        <tr>
            <td>
                                <asp:Button ID="btnAdd" runat="server" CssClass="auto-style19" OnClick="btnAdd_Click" Text="新增" />
                            </td>
        </tr>
    </table>


</asp:Content>

