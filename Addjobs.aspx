<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addjobs.aspx.cs" Inherits="Addjobs" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Add Jobs</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <section class="contact-section">
         <center>
            <div class="container" style="border:groove">
              
    
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="contact-title">ADD JOBS</h1>
                        <p>Enter jobs information here.</p>
                    </div>
                    <div class="col-lg-8 offset-2">
                        <form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        	<asp:TextBox ID="txtjobid" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox>
                                   
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        	<asp:TextBox ID="txtjobtitle" runat="server" class="form-control" placeholder="Job title" ></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtjobtitle"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtcname" runat="server" class="form-control"  placeholder="Company name" ></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtcname"></asp:RequiredFieldValidator>

                                     
                                    </div>
                                </div>
                                  <div class="col-sm-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtlocation" runat="server" class="form-control"  placeholder="Location"  ></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtlocation"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                       <asp:TextBox ID="txtsalary" runat="server" class="form-control"  placeholder="Salary"  ></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtsalary"></asp:RequiredFieldValidator>

                                     
                                    </div>
                                </div>
                                 <div class="col-sm-6">
                                    <div class="form-group">
                                       <asp:TextBox ID="txtqual" runat="server" class="form-control"  placeholder="Qualification"  ></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtqual"></asp:RequiredFieldValidator>

                                     
                                    </div>
                                </div>
                                  <div class="col-sm-6">
                                    <div class="form-group">
                                       <asp:TextBox ID="txtspecialization" runat="server" class="form-control"  placeholder="specialization"  ></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtspecialization"></asp:RequiredFieldValidator>

                                     
                                    </div>
                                </div>
                                  <div class="col-sm-6">
                                    <div class="form-group">
                                       <asp:TextBox ID="txthire" runat="server" class="form-control"  placeholder="No of Hire"  ></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txthire"></asp:RequiredFieldValidator>

                                     
                                    </div>
                                </div>
                                 <div class="col-sm-6">
                                    <div class="form-group">
                                       <asp:TextBox ID="txtjobnature" runat="server" class="form-control"  placeholder="Job Nature"  ></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtjobnature"></asp:RequiredFieldValidator>

                                     
                                    </div>
                                </div>
                                  <div class="col-sm-6">
                                    <div class="form-group">
                                       <asp:TextBox ID="txtexperience" runat="server" class="form-control"  placeholder="Experience"  ></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtexperience"></asp:RequiredFieldValidator>

                                     
                                    </div>
                                </div>
                               
                                 <div class="col-12">
                                    <div class="form-group">
                                        <textarea id="txtdescription" runat="server" class="form-control w-100" name="message"  cols="30" rows="4"  placeholder="Description"></textarea>
                                    </div>
                                </div>
                                 
                            </div>
                     
                                 <div class="form-group  col-lg-12">
									<div class="text-center">
                                        <asp:Button ID="btnsubmit" runat="server" Text="Submit"  CssClass="genric-btn danger circle" OnClick="btnsubmit_Click" />
                                  <asp:Button ID="btnclear" runat="server" Text="Clear"  CssClass="genric-btn danger circle" OnClick="btnclear_Click" />
                                        <br />
                                 <asp:Label ID="lblmsg" runat="server" Text="" Visible="false" ForeColor="Green"></asp:Label>
                                        </div>
                                     </div>
                        </form>
                    </div>
                    </div>
                </div>
             </center>
         </section>
</asp:Content>

