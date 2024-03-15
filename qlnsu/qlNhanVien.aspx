<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="qlNhanVien.aspx.cs" Inherits="qlnsu.qlNhanVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="color: brown">
        <h3 class="text-center">Danh Sách Nhân Viên</h3>
        <div>
            <a href="ThemNhanVien.aspx" class="btn btn-outline-danger">Thêm Nhân Viên</a>
        </div>
    </div>

    <div>&nbsp;</div>
    <asp:SqlDataSource ID="dsNhanVien" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>"
        SelectCommand="SELECT * FROM [NhanVien]"
        DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV"
        InsertCommand="INSERT INTO [NhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)"
        UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV">
        <DeleteParameters>
            <asp:Parameter Name="MaNV" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Honv" Type="String" />
            <asp:Parameter Name="Tennv" Type="String" />
            <asp:Parameter Name="Phai" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="NoiSinh" Type="String" />
            <asp:Parameter Name="MaPhong" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Honv" Type="String" />
            <asp:Parameter Name="Tennv" Type="String" />
            <asp:Parameter Name="Phai" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="NoiSinh" Type="String" />
            <asp:Parameter Name="MaPhong" Type="Int32" />
            <asp:Parameter Name="MaNV" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="gvNhanVien" runat="server" AutoGenerateColumns="False"
        CssClass="table table-bordered table-hover" AllowPaging="true" PageSize="5"
        DataSourceID="dsNhanVien" DataKeyNames="MaNV">
        <Columns>
            <asp:BoundField DataField="MaNV" HeaderText="Mã Nhân Viên" ReadOnly="True" />
            <asp:BoundField DataField="HoNV" HeaderText="Họ Nhân Viên" />
            <asp:BoundField DataField="TenNV" HeaderText="Tên Nhân Viên" />
            <asp:CheckBoxField DataField="Phai" HeaderText="Phái" />
            <asp:BoundField DataField="NgaySinh" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Ngày sinh " />
            <asp:BoundField DataField="NoiSinh" HeaderText="Nơi Sinh" />
            <asp:BoundField DataField="MaPhong" HeaderText="Mã Phòng" />
            <asp:CommandField ControlStyle-CssClass="btn btn-outline-danger" ShowEditButton="true" ButtonType="Button" ShowDeleteButton="true" />
        </Columns>
        <HeaderStyle CssClass="bg-secondary text-light" />
        <PagerStyle HorizontalAlign="Center" CssClass="pagination-ys" />
        <FooterStyle BackColor="Yellow" ForeColor="#330" />
        <HeaderStyle CssClass="bg-info" BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="WindowText" Font-Bold="True" ForeColor="YellowGreen" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="WhiteSmoke" />

    </asp:GridView>
</asp:Content>



