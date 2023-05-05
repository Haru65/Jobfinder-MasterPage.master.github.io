<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Findjob.aspx.cs" Inherits="Findjob" %>

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
                                <h2>Get your job</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End -->
        <!-- Job List Area Start -->
        <div class="job-listing-area pt-120 pb-120">
            <div class="container">
                <div class="row">
                    <!-- Left content -->
                    <div class="col-xl-3 col-lg-3 col-md-4">
                        <div class="row">
                            <div class="col-12">
                                    <div class="small-section-tittle2 mb-45">
                                    <div class="ion"> <svg 
                                        xmlns="http://www.w3.org/2000/svg"
                                        xmlns:xlink="http://www.w3.org/1999/xlink"
                                        width="20px" height="12px">
                                    <path fill-rule="evenodd"  fill="rgb(27, 207, 107)"
                                        d="M7.778,12.000 L12.222,12.000 L12.222,10.000 L7.778,10.000 L7.778,12.000 ZM-0.000,-0.000 L-0.000,2.000 L20.000,2.000 L20.000,-0.000 L-0.000,-0.000 ZM3.333,7.000 L16.667,7.000 L16.667,5.000 L3.333,5.000 L3.333,7.000 Z"/>
                                    </svg>
                                    </div>
                                    <h4>Filter Jobs</h4>
                                </div>
                            </div>
                        </div>
                        <!-- Job Category Listing start -->
                        <div class="job-category-listing mb-20">
                            <!-- single one -->
                            <div class="single-listing">
                               <div class="small-section-tittle2">
                                     <h4>Job Title</h4>
                               </div>
                               <asp:TextBox ID="txtsorttitle" runat="server"  CssClass="form-control"></asp:TextBox>

                            </div>
                            <br />     
                            <!-- single two -->
                          
                            <div class="single-listing">
                               <div class="small-section-tittle2">
                                     <h4>Job Location</h4>
                               </div>
                                 <asp:TextBox ID="txtsortlocation" runat="server"  CssClass="form-control"></asp:TextBox>
                                </div>
                             
                          
                          <div class="select-Categories pt-20 pb-20">
                               <div class="small-section-tittle2 text-center">
                                  <asp:Button ID="btnsearch" runat="server" Text="Search"  CssClass="genric-btn info circle" OnClick="btnsearch_Click" />
                                   </div>
                                 </div>

                        </div>
                        <!-- Job Category Listing End -->
                    </div>
                    <!-- Right content -->
                    <div class="col-xl-9 col-lg-9 col-md-8">
                        <!-- Featured_job_start -->
                        <section class="featured-job-area">
                            <div class="container">
                                <!-- Count of Job list Start -->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="count-job mb-35">
                                    <%--        <span>39, 782 Jobs found</span>--%>
                                            <!-- Select job items start -->
                                            <div class="select-job-items">
                                                <span>Sort by</span>
                                                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                                                    <asp:ListItem Selected="True" Text="All"></asp:ListItem>
                                                    <asp:ListItem Text="Recently" > </asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <!--  Select job items End-->
                                        </div>
                                     
                                    </div>
                                </div>
                                     <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1"  OnItemCommand="DataList1_ItemCommand">
                                    <ItemTemplate> 
                                        <div class="col-lg-12">
                                         <div class="single-job-items mb-30">
                                    <div class="job-items">
                                        <div class="company-img">
                                            <a href="#"><img src="assets/img/icon/job-list1.png" alt="">
                                            </a>
                                        &nbsp;&nbsp;</div>
                                        <div class="job-tittle job-tittle2">
                                            <a href="#">
                                        <asp:Label ID="lblempid" runat="server" Text='<%# Eval("empid") %>' Visible="false" />
                                                <h4><asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' /><asp:Label ID="lbljobid" runat="server" Text='<%# Eval("jid") %>' Visible="false" /></h4>
                                            </a>
                                            <ul>
                                                <li><asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' /></li>
                                                <li><i class="fas fa-map-marker-alt"></i>   <asp:Label ID="locationLabel" runat="server" Text='<%# Eval("location") %>' /></li>
                                                <li><asp:Label ID="Label1" runat="server" Text='<%# Eval("salary") %>' /></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right ">
                                           <asp:LinkButton ID="LinkButton1" runat="server"> View Details</asp:LinkButton>
                                   
           
                                    </div>
                                </div>
                                            </div>
<br />
                                    </ItemTemplate>
                                            </asp:DataList><asp:Label ID="Label3" runat="server" Text="" Visible="true" ForeColor="Red"></asp:Label><asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>
                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:job %>" SelectCommand="SELECT [jid], [title], [cname], [salary], [qual], [spec], [hire], [description], [location], [empid] FROM [addjobs]"></asp:SqlDataSource>
                              
                                </div>
                         
                        </section>
                        <!-- Featured_job_end -->
                    </div>
                </div>
            </div>
        </div>

</asp:Content>

