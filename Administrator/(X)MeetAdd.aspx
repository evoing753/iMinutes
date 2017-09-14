<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="(X)MeetAdd.aspx.cs" Inherits="Administrator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script  type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script> <%--時間選擇器--%>

    <style type="text/css">

        .auto-style8 {
            font-size: xx-large;
            font-family: 微軟正黑體;
        }
        .auto-style9 {
            font-size: medium;
            font-family: 微軟正黑體;
        }
        .auto-style10 {
            height: 20px;
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style16 {
            color: #0000FF;
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style18 {
            color: #FF0000;
        }
        .auto-style19 {
            text-decoration: none;
            font-size: x-large;
        }
        .auto-style20 {
            font-size: x-large;
            font-family: 微軟正黑體;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="auto-style1">
        <tr>
            <td><strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="會議新增"></asp:Label>
                    &nbsp;</strong><span class="auto-style20">[</span><span class="auto-style9"><a class="auto-style19" href="MeetList.aspx">回會議列表</a></span><span class="auto-style20">]</span></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">標題</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtTitle" runat="server" CssClass="auto-style20"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">起始時間</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtStartTime" runat="server" CssClass="auto-style20" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm'})"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">結束時間</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtEndTime" runat="server" CssClass="auto-style20" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm'})"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">召集人</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtConvener" runat="server" CssClass="auto-style20"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">會議地點<span class="auto-style18">*</span></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtLocation" runat="server" CssClass="auto-style20"></asp:TextBox>
                <span class="auto-style20">(改下拉式選單)</span></td>
        </tr>
        <tr>
            <td class="auto-style20">備註</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtNote" runat="server" CssClass="auto-style20"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                                <strong>
                                <asp:Label ID="lblMessage" runat="server" CssClass="auto-style16" Text="Label"></asp:Label>
                                </strong>
                            </td>
        </tr>
        <tr>
            <td>
                                <asp:Button ID="btnAdd" runat="server" CssClass="auto-style20" OnClick="btnAdd_Click" Text="新增" />
                            </td>
        </tr>
    </table>


</asp:Content>

