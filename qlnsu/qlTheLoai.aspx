﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="qlTheLoai.aspx.cs" Inherits="qlnsu.qlTheLoai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="dsTheLoai" runat="server" ConnectionString="<%$ ConnectionStrings:qlNhanVienConnectionString %>"
        DeleteCommand="DELETE FROM [TheLoai] WHERE [Id] = @Id"
        InsertCommand="INSERT INTO [TheLoai] ([TenTheLoai], [TrangThai]) VALUES (@TenTheLoai, @TrangThai)"
        SelectCommand="SELECT * FROM [TheLoai]"
        UpdateCommand="UPDATE [TheLoai] SET [TenTheLoai] = @TenTheLoai, [TrangThai] = @TrangThai WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenTheLoai" Type="String"></asp:Parameter>
            <asp:Parameter Name="TrangThai" Type="Boolean"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenTheLoai" Type="String"></asp:Parameter>
            <asp:Parameter Name="TrangThai" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
   
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="dsTheLoai" InsertItemPosition="LastItem">
    <AlternatingItemTemplate>
        <tr style="background-color:azure;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            </td>
            <td>
                <asp:Label ID="TenTheLoaiLabel" runat="server" Text='<%# Eval("TenTheLoai") %>' />
            </td>
            <td>
                <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Eval("TrangThai") %>' Enabled="false" />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color:antiquewhite;color: #FFFFFF;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            </td>
            <td>
                <asp:TextBox ID="TenTheLoaiTextBox" runat="server" Text='<%# Bind("TenTheLoai") %>' />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("TrangThai") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="background-color:aliceblue;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td>No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr >
            <td ">
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="Button1" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TenTheLoai") %>' />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("TrangThai") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Button ID="Button2" runat="server" CommandName="Delete" Text="Delete" />
                <asp:Button ID="Button3" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>' />
            </td>
            <td>
<asp:Label ID="Label2" runat="server" Text='<%# Eval("TenTheLoai") %>' />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox3" runat="server" Checked='<%# Eval("TrangThai") %>' Enabled="false" />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color:cornflowerblue;color: #000000;">
                            <th runat="server"></th>
                            <th runat="server">Id</th>
                            <th runat="server">TenTheLoai</th>
                            <th runat="server">TrangThai</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color:brown;font-weight: bold;color: brown;">
            <td>
                <asp:Button ID="Button4" runat="server" CommandName="Delete" Text="Delete" />
                <asp:Button ID="Button5" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Id") %>' />
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("TenTheLoai") %>' />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox4" runat="server" Checked='<%# Eval("TrangThai") %>' Enabled="false" />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
    
    
</asp:Content>


