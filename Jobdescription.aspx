<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Jobdescription.aspx.cs" Inherits="Jobdescription" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <!-- Hero Area Start-->
        <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Job Details</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <!-- Hero Area End -->
        <!-- job post company Start -->
        <div class="job-post-company pt-120 pb-120">
            <div class="container">
                <div class="row justify-content-between">
                    <!-- Left Content -->
                    <div class="col-xl-7 col-lg-8">
                        <!-- job single -->
                        <div class="single-job-items mb-50">
                            <div class="job-items">
                                <div class="company-img company-img-details">
                                    <a href="#"><img src="assets/img/icon/job-list1.png" alt=""></a>
                                </div>
                                <div class="job-tittle">
                                    <a href="#">
                                        <h4> <asp:Label ID="lbltitle" runat="server" Text=""></asp:Label></h4>
                                    </a>
                                    <ul>
                                        <li> <asp:Label ID="lblcname" runat="server" Text=""></asp:Label></li>
                                        <li><i class="fas fa-map-marker-alt"></i><asp:Label ID="lbllocation" runat="server" Text=""></asp:Label></li>
                                        <li><asp:Label ID="lblsalary" runat="server" Text=""></asp:Label></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                          <!-- job single End -->
                       
                        <div class="job-post-details">
                            <div class="post-details1 mb-50">
                                <!-- Small Section Tittle -->
                                <div class="small-section-tittle">
                                    <h4>Job Description</h4>
                                </div>
                                <p> <asp:Label ID="lbljobdescription" runat="server" Text="Label"></asp:Label></p>
                            </div>
                            <div class="post-details2  mb-50">
                                 <!-- Small Section Tittle -->
                                <div class="small-section-tittle">
                                    <h4>Required Knowledge, Skills, and Abilities</h4>
                                </div>
                               <ul>
                                   <li> <asp:Label ID="lblqual" runat="server" Text=""></asp:Label></li>
                                   <li> <asp:Label ID="lblspecialization" runat="server" Text=""></asp:Label></li>
                                  
                               </ul>
             
                            </div>
                            <div class="post-details2  mb-50">
                                 <!-- Small Section Tittle -->
                                <div class="small-section-tittle">
                                    <h4>Education + Experience</h4>
                                </div>
                               <ul>
                                   <li><asp:Label ID="lblexperience" runat="server" Text="Label"></asp:Label></li>
                                  
                               </ul>
                            </div>
                        </div>

                    </div>
                    <!-- Right Content -->
                    <div class="col-xl-4 col-lg-4">
                        <div class="post-details3  mb-50">
                            <!-- Small Section Tittle -->
                           <div class="small-section-tittle">
                               <h4>Job Overview</h4>
                           </div>
                          <ul>
                           <%--   <li>Posted date : <span>12 Aug 2019</span></li>--%>
                              <li>Location : <span> <asp:Label ID="ljoblocation" runat="server" Text=""></asp:Label></span></li>
                              <li>Vacancy : <span><asp:Label ID="lblhires" runat="server" Text=""></asp:Label></span></li>
                              <li>Job nature : <span>
                                <asp:Label ID="lbljobnature" runat="server" Text="Label"></asp:Label></span></li>
                              <li>Salary :  <span><asp:Label ID="lbljobsal" runat="server" Text=""></asp:Label></span></li>
                              <%--<li>Application date : <span>12 Sep 2020</span></li>--%>
                          </ul>
                         <div class="apply-btn2">
                             <asp:Button ID="btnapply" runat="server" class="btn apply-btn2" Text="Apply Now"  OnClick="btnapply_Click"/>

                         </div>
                       </div>
                        <div class="post-details4  mb-50">
                            <!-- Small Section Tittle -->
                           <div class="small-section-tittle">
                               <h4>Company Information</h4>
                           </div>
                             
                             
                            <ul>
                                <li>Name:<asp:Label ID="lblcompname" runat="server" Text=""></asp:Label> </li>
                               <%-- <li>Web : <span>Not available</span></li>
                                <li>Email: <span>Not availavle</span></li>--%>
                            </ul>
                       </div>
                    </div>
                </div>
             <asp:Label ID="lbltempo2" runat="server" Text="" Visible="false"></asp:Label><asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                          <asp:Label ID="lbltempo" runat="server" Text="" Visible="false"></asp:Label>
                  <asp:Label ID="lblname" runat="server" Text="" Visible="false"></asp:Label>
                  <asp:Label ID="lblemailid" runat="server" Text="" Visible="false"></asp:Label>

                  <asp:Label ID="lblmobno" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="lblqualification" runat="server" Text="" Visible="false"></asp:Label>
                 <asp:Label ID="lblspecialist" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="lblexp" runat="server" Text="" Visible="false"></asp:Label>

            </div>
   
        </div>
</asp:Content>

