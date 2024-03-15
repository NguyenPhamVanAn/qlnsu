<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThemNhanVien.aspx.cs" Inherits="qlnsu.ThemNhanVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row mt-3 mb-2">
        <div class="col-md-2">Họ </div>
        <div class="col-md-10">
            <asp:TextBox ID="txtHo" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row mt-3 mb-2">
        <div class="col-md-2">Tên</div>
        <div class="col-md-10">
            <asp:TextBox ID="txtTen" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2">Giới Tính</div>
        <div class="col-md-10">
            <asp:RadioButton ID="rdNam" runat="server" Checked="true" Text="Nam" GroupName="GT" />
            <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" GroupName="GT" />
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2">Ngày Sinh</div>
        <div class="col-md-10">
            <asp:TextBox ID="txtNgaySinh" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2">Nơi Sinh</div>
        <div class="col-md-10">
            <asp:TextBox ID="txtNoiSinh" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row mb-2">
        <div class="col-md-2">Phòng Ban</div>
        <div class="col-md-10">
            <asp:DropDownList ID="ddlphong" runat="server" CssClass="form-control"
                DataSourceID="dsPhong" DataTextField="TenPhong" DataValueField="MaPhong">
            </asp:DropDownList>
        </div>
    </div>

    <div class="row mb-2">
        <div class="col-md-2"></div>
        <div class="col-md-10">
            <asp:Button ID="btSave" runat="server" Text="Save" OnClick="btSave_Click" CssClass="table-warning w-25" />
            <asp:Label ID="lbThongBao" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <asp:SqlDataSource ID="dsPhong" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>"
        SelectCommand="SELECT * FROM [PhongBan]"></asp:SqlDataSource>
</asp:Content>



