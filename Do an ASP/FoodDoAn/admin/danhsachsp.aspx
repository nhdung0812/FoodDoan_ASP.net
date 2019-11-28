<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="danhsachsp.aspx.cs" Inherits="FoodDoAn.danhsachsp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Custom styles for this page -->
    <link href="<%=Page.ResolveUrl("~/admin/") %>vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" />
    <style type="text/css">
        .mb-4 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="server">
    <!-- Page Heading -->
    <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                        <th>Tài Khoản</th>
                        <th>Mật Khẩu</th>
                        <th>Tên</th>
                        <th>Số Điện Thoại</th>
                        <th>Chức Vụ</th>
                        <th>Trạng Thái</th>
                        <td></td>
                    </tr>
                  </thead>
                  <tbody>
                     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    
                            <ItemTemplate>
                                <tr>
                                    <td><%# Eval("username")%></td>
                                    <td><%# Eval("pass")%></td>
                                    <td><%# Eval("name")%></td>
                                    <td><%# Eval("phone")%></td>
                                    <td><%# Eval("role")%></td>
                                    <td><%# Eval("status")%></td>
                                    <td><a href="" class="btn btn-warning">Sửa</a>
                                        <a href="" class="btn btn-danger">Xóa</a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                         </asp:Repeater>
                  </tbody>
                </table>
              </div>
            </div>
          </div>












    <%--<div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive" style="margin-left: 40px">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Tài Khoản</th>
                            <th>Mật Khẩu</th>
                            <th>Tên</th>
                            <th>Số Điện Thoại</th>
                            <th>Chức Vụ</th>
                            <th>Trạng Thái</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Eval("username")%></td>
                                    <td><%# Eval("pass")%></td>
                                    <td><%# Eval("name")%></td>
                                    <td><%# Eval("phone")%></td>
                                    <td><%# Eval("role")%></td>
                                    <td><%# Eval("status")%></td>
                                    <td><a href="" class="btn btn-warning">Sửa</a>
                                        <a href="" class="btn btn-danger">Xóa</a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>

                </table>
            </div>
        </div>
    </div>--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Food_SaleConnectionString2 %>" SelectCommand="SELECT * FROM [member]"></asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_js" runat="server">
    <!-- Page level plugins -->
    <script src="<%=Page.ResolveUrl("~/admin/") %>vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="<%=Page.ResolveUrl("~/admin/") %>vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="<%=Page.ResolveUrl("~/admin/") %>js/demo/datatables-demo.js"></script>
</asp:Content>
