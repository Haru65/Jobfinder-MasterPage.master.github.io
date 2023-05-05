<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <div class="slider-area">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
            <div class="container">
                <div class="row">

                    <div class="col-lg-6">
                        <div class="hero-cap text-center">
                            <h2>Login</h2>
                        </div>
                           <center>
        <div class="card">
            <div class="card-body">

        <div class="tab-pane active col-lg-8 ">

									<div class="form-group col-lg-12">
										  <asp:Label ID="lblemail" runat="server"  Text="Email"></asp:Label>
                                               <asp:TextBox ID="txtemail" class="form-control" TextMode="Email" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtemail"  ></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  ErrorMessage="Invalid Email" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"  Display = "Dynamic"></asp:RegularExpressionValidator>
									</div>
									<div class="form-group  col-lg-12">
										  <asp:Label ID="lblpass" runat="server" Text="Password"></asp:Label>
                                               <asp:TextBox ID="txtpass" class="form-control" CssClass="form-control" TextMode="Password"  runat="server"  placeholder="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ErrorMessage="*" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
									</div>
                                    <div class="form-group  col-lg-12">
									<div class="text-center">
										<asp:Button ID="Button1" runat="server"   CssClass="genric-btn danger circle" Text="Login" OnClick="Button1_Click"  />
                                        <asp:Button ID="btnreset" runat="server" CssClass="genric-btn danger circle  " Text="Reset"  OnClick="btnreset_Click" />
									<%--	<a data-toggle="tab" href="#forgot-password" class="m-l5"><i class="fa fa-unlock-alt"></i> Forgot Password</a> --%>
                                        <br />
                                        <asp:Label ID="Label3" runat="server" Text="" ForeColor="Red"></asp:Label>	</div>
                                        </div>
								</div>
</div>
            </
        </div>
           </center>
                    </div>
                </div>
            </div>
        </div>

    </div>



</asp:Content>

