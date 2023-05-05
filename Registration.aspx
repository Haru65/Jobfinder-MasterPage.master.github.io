<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Register</h2>
                        </div>
                           <div class="hero-cap text-center ">
                            <asp:RadioButtonList ID="rblist" runat="server" ForeColor="White" Font-Bold="true" CssClass="col-lg-4 offset-4" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblist_SelectedIndexChanged" AutoPostBack="true"  >
        <asp:ListItem Value="Canidate" Selected="True" Text="Canidate"    >Candidate</asp:ListItem>
         <asp:ListItem Value="Employeer" Text="Employeer">Employeer</asp:ListItem>
    </asp:RadioButtonList>
                        </div>
                                  <hr />
                                 <div class="col-lg-12">
                        <form class="form-contact contact_form"   novalidate="novalidate">
                                <asp:Panel ID="Panel1" runat="server" Visible="true">
                                       <div class="row">
                                           <div class="form-group col-lg-4">
                                               <asp:Label ID="Label1" runat="server" Text="Name:" ForeColor="white" Font-Bold="true" ></asp:Label>
                                               <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                                           </div>
                                           <div class="form-group col-lg-4   ">
                                               <asp:Label ID="Label2" runat="server" Text="Email:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtemail" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                                               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"  Display = "Dynamic"></asp:RegularExpressionValidator>
                                           </div>
                                           <div class="form-group   col-lg-4">
                                               <asp:Label ID="Label15" runat="server" Text="Password:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtpass" CssClass="form-control" TextMode="Password"  runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*" ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
                                           </div>
                                          
                                       </div>
                                      <div class="row">
                                            <div class="form-group   col-lg-4">
                                               <asp:Label ID="Label16" runat="server" Text="Confirm Password:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtconfirmpass" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*" ControlToValidate="txtconfirmpass" ForeColor="Red"></asp:RequiredFieldValidator>
                                          <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not match" ControlToValidate="txtconfirmpass" ForeColor="Red"  ControlToCompare="txtpass"></asp:CompareValidator>
                                                </div>
                                          
                                           <div class="form-group   col-lg-4">
                                               <asp:Label ID="Label3" runat="server" Text="Mobile No:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtmobno" CssClass="form-control" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtmobno" ForeColor="Red"></asp:RequiredFieldValidator>
                                               <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid Mobile Number" ControlToValidate="txtmobno" ForeColor="Red"  ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 
                                            
                                           </div>
                                            <div class="form-group col-lg-4">
                                               <asp:Label ID="Label13" runat="server" Text="DoB:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtdob" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtdob" ForeColor="Red"></asp:RequiredFieldValidator>
                                           </div>

                                          </div>
                                       <div class="row">

                                           <div class="form-group col-lg-4">

                                               <asp:Label ID="Label4" runat="server" Text="Qualification:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtqual" CssClass="form-control" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtqual" ForeColor="Red"></asp:RequiredFieldValidator>
                                           </div>
                                         
                                           <div class="form-group col-lg-4">
                                               <asp:Label ID="Label5" runat="server" Text="Specialization:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtspecial" CssClass="form-control" runat="server"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtspecial" ForeColor="Red"></asp:RequiredFieldValidator>
                                           </div>
                                            <div class="form-group col-lg-4">
                                               <asp:Label ID="Label6" runat="server" Text="Experience:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtexp" CssClass="form-control" runat="server"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtexp" ForeColor="Red"></asp:RequiredFieldValidator>
                                           </div>
                                       </div>

                                       <div class="row">
                                         
                                           <div class="form-group col-lg-4">
                                               <asp:Label ID="Label7" runat="server" Text="Last salary Drawn:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtsal" CssClass="form-control" runat="server"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="txtsal" ForeColor="Red"></asp:RequiredFieldValidator>
                                           </div>
                                           <div class="form-group col-lg-4">
                                               <asp:Label ID="Label8" runat="server" Text="Expected salary:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtexpected" CssClass="form-control" runat="server"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="txtexpected" ForeColor="Red"></asp:RequiredFieldValidator>
                                           </div>
                                       
                                       </div>
                                   </asp:Panel>

                               <%-- employee panal starts here--%>
                                   <asp:Panel ID="Panel2" runat="server" Visible="false">
                                       <div class="row">
                                           <div class="form-group col-lg-4">
                                               <asp:Label ID="Label9" runat="server" Text="Name:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtempname" CssClass="form-control" runat="server"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtempname"></asp:RequiredFieldValidator>
                                           </div>
                                           <div class="form-group col-lg-4">
                                               <asp:Label ID="Label10" runat="server" Text="Email:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtempemail" CssClass="form-control" runat="server"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtempemail" ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"  Display = "Dynamic"></asp:RegularExpressionValidator>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtempemail"></asp:RequiredFieldValidator>
                                           </div>
                                           <div class="form-group   col-lg-4">
                                               <asp:Label ID="Label17" runat="server" Text="Password:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtemppass" CssClass="form-control" TextMode="Password"  runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="*" ControlToValidate="txtemppass" ForeColor="Red"></asp:RequiredFieldValidator>
                                           </div>
                                       </div>
                                       <div class="row">
                                            <div class="form-group   col-lg-4">
                                               <asp:Label ID="Label19" runat="server" Text="Confirm Password:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtempconfirmpass" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="*" ControlToValidate="txtempconfirmpass" ForeColor="Red"></asp:RequiredFieldValidator>
                                          <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Password not match"  ControlToValidate="txtempconfirmpass" ForeColor="Red"  ControlToCompare="txtemppass"></asp:CompareValidator>
                                                </div>
                                            <div class="form-group col-lg-4">
                                               <asp:Label ID="Label11" runat="server" Text="Mobile No:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtempmobno" CssClass="form-control" runat="server"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*"  ForeColor="Red" ControlToValidate="txtempmobno"></asp:RequiredFieldValidator>
                                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Mobile Number" ControlToValidate="txtempmobno" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>  
                                           </div>
                                           <div class="form-group col-lg-4">
                                               <asp:Label ID="Label12" runat="server" Text="DoB:"  ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtempdob" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtempdob"></asp:RequiredFieldValidator>
                                           </div>
                                          
                                          
                                       </div>
                                      <div class="row">
                                           <div class="form-group col-lg-4">

                                               <asp:Label ID="Label14" runat="server" Text="Current salary:" ForeColor="white" Font-Bold="true"></asp:Label>
                                               <asp:TextBox ID="txtcsalary" CssClass="form-control" runat="server"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtcsalary"></asp:RequiredFieldValidator>
                                           </div>
                                       </div>

                                   </asp:Panel>

                                   <div class="text-center">

                                       <%--<asp:Button ID="btnregemp"  CssClass="site-button outline outline-2 " runat="server" Text="Register" OnClick="btnregemp_Click" />
                                       <asp:Button ID="btnrstemp"  CssClass="site-button outline outline-2 " runat="server" Text="Reset" OnClick="btnrstemp_Click" />--%>
                                     
                                       <asp:Button ID="btnregister" CssClass="genric-btn danger circle" runat="server" Text="Register" OnClick="btnregister_Click"  />
                                       <asp:Button ID="btnreset" runat="server" CssClass="genric-btn danger circle" Text="Reset"  OnClick="btnreset_Click" /><br />
                                         <asp:Label ID="Lblmsg" runat="server" Text="" ForeColor="white" Visible="false"></asp:Label>
                                         <asp:Label ID="lblempty" runat="server" Text="" Visible="false"></asp:Label>
                                 
                                   </div>
                            <br />     <br />     <br />
                              
                           
                                
                             
                          
                        </form>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 
</asp:Content>

