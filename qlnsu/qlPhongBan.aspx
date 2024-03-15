<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="qlPhongBan.aspx.cs" Inherits="qlnsu.qlPhongBan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
           <div style="color:brown">
    <h3 class="text-center">Quản Lý Phòng Ban</h3>
                <a href="qlNhanVien.aspx" class="btn btn-outline-danger">Về Trang Nhân Viên</a>

              </div>
               <div class="row w-50 m-auto">
                   <div class="col-md-12 form-inline mt-3 mb-3 text-center" >
                       <asp:DropDownList class="text-uppercase" ID="ddlPhong" runat="server" DataTextField="TenPhong" DataValueField="MaPhong" DataSourceID="dsPhongBan"></asp:DropDownList>
                </div>
                   
               </div>
   
  
    <asp:SqlDataSource ID="dsPhongBan" runat="server" ConnectionString="<%$ ConnectionStrings:qlNhanVienConnectionString %>" SelectCommand="SELECT * FROM [PhongBan]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsNhanVien" runat="server"
        ConnectionString="<%$ ConnectionStrings:qlNhanVienConnectionString %>"
        DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV"
        InsertCommand="INSERT INTO [NhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)" SelectCommand="SELECT * FROM [NhanVien]" UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV">
        <DeleteParameters>
            <asp:Parameter Name="MaNV" Type="Int32"></asp:Parameter>
        </DeleteParameters>
      
    </asp:SqlDataSource>
    <asp:GridView ID="gvNhanVien" runat="server"  DataSourceID="dsNhanVien" AutoGenerateColumns="False" DataKeyNames="MaNV"  CssClass="table table-hover">
        <Columns >
            
            <asp:BoundField DataField="MaNV" HeaderText="Mã Nhân Viên" ReadOnly="True" InsertVisible="False" SortExpression="MaNV"></asp:BoundField>
            <asp:BoundField DataField="HoNV" HeaderText="Họ Nhân Viên" SortExpression="HoNV"></asp:BoundField>
            <asp:BoundField DataField="TenNV" HeaderText="Tên Nhân Viên" SortExpression="TenNV"></asp:BoundField>
            <asp:CheckBoxField DataField="Phai" HeaderText="Phái" SortExpression="Phai"></asp:CheckBoxField>
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" DataFormatString="{0:dd/MM/yyyy}" SortExpression="NgaySinh"></asp:BoundField>
            <asp:BoundField DataField="NoiSinh" HeaderText="Nơi Sinh" SortExpression="NoiSinh"></asp:BoundField>
            <asp:BoundField DataField="MaPhong" HeaderText="Mã Phòng" SortExpression="MaPhong"></asp:BoundField>
            <asp:CommandField ControlStyle-CssClass="btn btn-outline-danger" ButtonType="Button" ShowDeleteButton="true"></asp:CommandField>
        </Columns>
        <HeaderStyle CssClass="bg-secondary text-light" />
        <EmptyDataTemplate >
            <div class="alert alert-warning">
                Khong co nhan vien nao 
            </div>
        </EmptyDataTemplate>

         <FooterStyle BackColor="Yellow" ForeColor="#330" />
 <HeaderStyle CssClass="bg-info" BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC"/>
 <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
 <RowStyle BackColor="White" ForeColor="#330099"/>
 <SelectedRowStyle BackColor="WindowText" Font-Bold="True" ForeColor="YellowGreen" />
 <SortedAscendingCellStyle BackColor="#FEFCEB" />
 <SortedAscendingHeaderStyle BackColor="#AF0101" />
 <SortedDescendingCellStyle BackColor="#F6F0C0" />
 <SortedDescendingHeaderStyle BackColor="WhiteSmoke" />
    </asp:GridView>
  
</asp:Content>

       