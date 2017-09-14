<%@ Page Title="" Language="C#" MasterPageFile="~/iMasterPageAdmin.master" AutoEventWireup="true" CodeFile="PlacesUpdate.aspx.cs" Inherits="Administrator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style7 {
            font-size: xx-large;
            font-family: 微軟正黑體;
            color: #000000;
        }
        .auto-style8 {
            font-size: large;
            font-family: 微軟正黑體;
        }
        .auto-style9 {
            font-size: medium;
            font-family: 微軟正黑體;
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
        .auto-style15 {
            text-decoration: none;
            font-size: x-large;
        }
        .auto-style16 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    <table class="auto-style1">
        <tr>
            <td>
                    <strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="會議場所編輯"></asp:Label>
                    &nbsp;&nbsp;</strong><span class="auto-style14">[</span><span class="auto-style9"><a class="auto-style15" href="PlacesList.aspx">回會議場所</a></span><span class="auto-style14">]</span></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:iMinutesConnectionString1 %>" DeleteCommand="DELETE FROM [places] WHERE [place_id] = @place_id" InsertCommand="INSERT INTO [places] ([place_name], [place_location], [place_capacity], [organization]) VALUES (@place_name, @place_location, @place_capacity, @organization)" SelectCommand="SELECT * FROM [places] WHERE ([place_id] = @place_id)" UpdateCommand="UPDATE [places] SET [place_name] = @place_name, [place_location] = @place_location, [place_capacity] = @place_capacity, [organization] = @organization WHERE [place_id] = @place_id">
                    <DeleteParameters>
                        <asp:Parameter Name="place_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="place_name" Type="String" />
                        <asp:Parameter Name="place_location" Type="String" />
                        <asp:Parameter Name="place_capacity" Type="Int32" />
                        <asp:Parameter Name="organization" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter Name="place_id" QueryStringField="pid" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="place_name" Type="String" />
                        <asp:Parameter Name="place_location" Type="String" />
                        <asp:Parameter Name="place_capacity" Type="Int32" />
                        <asp:Parameter Name="organization" Type="String" />
                        <asp:Parameter Name="place_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:FormView ID="FormView1" runat="server" CssClass="auto-style8" DataKeyNames="place_id" DataSourceID="SqlDataSource1" DefaultMode="Edit">
                    <EditItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style16">編號</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="place_idLabel1" runat="server" Text='<%# Eval("place_id") %>' CssClass="auto-style16" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style16">組織名稱</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="organizationTextBox" runat="server" CssClass="auto-style14" Text='<%# Bind("organization") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style16">場所名稱</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="place_nameTextBox" runat="server" Text='<%# Bind("place_name") %>' CssClass="auto-style14" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style16">地點</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="place_locationTextBox" runat="server" CssClass="auto-style14" Text='<%# Bind("place_location") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style16">容納人數</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="place_capacityTextBox" runat="server" Text='<%# Bind("place_capacity") %>' CssClass="auto-style14" TextMode="Number" />
                                </td>
                            </tr>
                        </table>
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" Visible="False" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" Visible="False" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        place_name:
                        <asp:TextBox ID="place_nameTextBox" runat="server" Text='<%# Bind("place_name") %>' />
                        <br />
                        place_location:
                        <asp:TextBox ID="place_locationTextBox" runat="server" Text='<%# Bind("place_location") %>' />
                        <br />
                        place_capacity:
                        <asp:TextBox ID="place_capacityTextBox" runat="server" Text='<%# Bind("place_capacity") %>' />
                        <br />
                        organization:
                        <asp:TextBox ID="organizationTextBox" runat="server" Text='<%# Bind("organization") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        place_id:
                        <asp:Label ID="place_idLabel" runat="server" Text='<%# Eval("place_id") %>' />
                        <br />
                        place_name:
                        <asp:Label ID="place_nameLabel" runat="server" Text='<%# Bind("place_name") %>' />
                        <br />
                        place_location:
                        <asp:Label ID="place_locationLabel" runat="server" Text='<%# Bind("place_location") %>' />
                        <br />
                        place_capacity:
                        <asp:Label ID="place_capacityLabel" runat="server" Text='<%# Bind("place_capacity") %>' />
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
                    <strong>
                    <asp:Label ID="lblMessage" runat="server" CssClass="auto-style11" Text="Label"></asp:Label>
                    </strong>
                </td>
        </tr>
        <tr>
            <td>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" OnClick="Button1_Click" Text="修改" />
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" onclientclick="history.back(); return false;" Text="取消" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" OnClick="Button2_Click" Text="刪除" Width="70px" />
                </td>
        </tr>
    </table>




</asp:Content>

