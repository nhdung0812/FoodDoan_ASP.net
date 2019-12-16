<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Food_Type.aspx.cs" Inherits="FoodDoAn.Food_Type" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="p-5">
                <div class="text-center">
                    <h1 class="h2 text-gray-900 mb-4">THÊM LOẠI MÓN ĂN</h1>
                    <br />
                </div>
                
                    <div class="user">
                        <div class="form-group row">
                            <div class=" col-lg-4 col-sm-4">
                                <asp:TextBox ID="txtName" runat="server" type="text" CssClass="form-control form-control-user" placeholder="Tên Món"></asp:TextBox>
                                <asp:RequiredFieldValidator ValidationGroup="vsNotification" ID="rfvName" runat="server" CssClass="text-danger " ErrorMessage="Bạn Chưa Nhập Name" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                            </div>

                            <div class="col-sm-4">
                                <asp:TextBox ID="txtUserName" runat="server" type="text" CssClass="form-control form-control-user" placeholder=""></asp:TextBox>
                                <asp:RequiredFieldValidator ValidationGroup="vsNotification" ID="rfvUserName" runat="server" ErrorMessage="Bạn Chưa Nhập User Name" ControlToValidate="txtUserName" CssClass="text-danger  "></asp:RequiredFieldValidator><br />
                                <asp:RegularExpressionValidator ID="revUserName" runat="server" ErrorMessage="Bạn Phải Nhập Chữ" ValidationExpression="^[a-zA-Z\\s]+\w{3,20}$" ControlToValidate="txtUserName" CssClass="text-danger"></asp:RegularExpressionValidator>
                            </div>
                            <div class="col-sm-4  mb-3 mb-sm-0">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                        </div>
                        <div class="form-group row">

                            <div class="col-sm-4 mb-3 mb-sm-0">

                                <asp:TextBox ID="txtPassword" runat="server" type="password" CssClass="form-control form-control-user" placeholder="Trạng Thái"></asp:TextBox>
                                <asp:RequiredFieldValidator ValidationGroup="vsNotification" ID="rvPass" runat="server" ErrorMessage="Bạn Chưa Nhập Password" ControlToValidate="txtPassword" CssClass="text-danger  "></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ValidationGroup="vsNotification" ID="revPassword" runat="server" ErrorMessage="Mật Khẩu 8 kí tự và có 1 Chữ và 1 Số" ControlToValidate="txtPassword" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" CssClass="text-danger "></asp:RegularExpressionValidator>
                            </div>
                            <div class="col-sm-4  mb-3 mb-sm-0">

                                <asp:TextBox ID="txtRepass" runat="server" type="password" CssClass="form-control form-control-user" placeholder="Thành Viên"></asp:TextBox>
                                <asp:CompareValidator ValidationGroup="vsNotification" ID="cvRepass" runat="server" ErrorMessage="rePass Chưa giống pass" ControlToCompare="txtPassword" ControlToValidate="txtRepass" Type="String" CssClass="text-danger "></asp:CompareValidator>
                            </div>
                            <div class="col-sm-4  mb-3 mb-sm-0">

                                <asp:TextBox ID="txt_Ngay" runat="server" type="text" CssClass="form-control form-control-user" placeholder=""></asp:TextBox>
                                
                            </div>
                        </div>
                        <br />
                        <div class="form-group row">
                            <div class="col-lg-12     col-sm-4  mb-3 mb-sm-0">
                                <asp:Button ValidationGroup="vsNotification" ID="btn_Them" runat="server" Text="Thêm Loại Sản Phẩm" CssClass="btn btn-primary btn-user btn-block"  />
                            </div>
                            <br>
                            <hr>
                        </div>

                    </div>
                <hr />
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_js" runat="server">
</asp:Content>
