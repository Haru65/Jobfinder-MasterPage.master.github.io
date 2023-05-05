<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="getjobdetils.aspx.cs" Inherits="getjobdetils" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Get Job Details</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       </div>
      <div class="whole-wrap">
		<div class="container box_1170">
    	<div class="section-top-border">
            <center>
			<b><asp:Label ID="Label1" runat="server" Text="Job Title:"></asp:Label></b>
             <asp:Label ID="txtjobtitle" runat="server" Text=""></asp:Label><br />
           <b> <asp:Label ID="Label2" runat="server" Text="Company Name:"></asp:Label></b>
            <asp:Label ID="txtcname" runat="server" Text=""></asp:Label><br />
           <b> <asp:Label ID="Label3" runat="server" Text="Salary:"></asp:Label></b>
            <asp:Label ID="txtsal" runat="server" Text=""></asp:Label><br />
           <b> <asp:Label ID="Label4" runat="server" Text="Qualification:"></asp:Label></b>
            <asp:Label ID="txtqual" runat="server" Text=""></asp:Label><br />
           <b> <asp:Label ID="Label6" runat="server" Text="Specilization:"></asp:Label></b>
            <asp:Label ID="txtspec" runat="server" Text=""></asp:Label><br />
           <b> <asp:Label ID="Label7" runat="server" Text="NO of Hire:"></asp:Label></b>
            <asp:Label ID="txthire" runat="server" Text=""></asp:Label><br />
           <b> <asp:Label ID="Label8" runat="server" Text="Description:"></asp:Label></b>
            <asp:Label ID="txtdesc" runat="server" Text=""></asp:Label><br />
            <b><asp:Label ID="Label9" runat="server" Text="location:"></asp:Label></b>
            <asp:Label ID="txtloc" runat="server" Text=""></asp:Label><br />
            <b><asp:Label ID="Label5" runat="server" Text="Job Nature:"></asp:Label></b>
            <asp:Label ID="txtjobn" runat="server" Text=""></asp:Label><br />
          <b>  <asp:Label ID="Label10" runat="server" Text="Experience:"></asp:Label></b>
            <asp:Label ID="txtexp" runat="server" Text=""></asp:Label><br />
                </center>
            </div>
            </div></div>
</asp:Content>

