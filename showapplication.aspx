<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showapplication.aspx.cs" Inherits="showapplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>My Applications</h2>
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
                <div class="row">
                    <div class="col-lg-4 offset-3">
                          <asp:TextBox ID="txtsearch" CssClass="form-control" runat="server" OnTextChanged="brnsearch_Click" AutoPostBack="true"></asp:TextBox>
                    </div>
                       <div class="col-lg-2">
                  <asp:Button ID="brnsearch" runat="server" CssClass="genric-btn danger circle" Text="SEARCH" OnClick="brnsearch_Click"></asp:Button>
                           </div>
                </div>
                <hr />
			<asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="Get Details" />
                    <asp:BoundField DataField="empid" HeaderText="empid" SortExpression="empid" />
                    <asp:BoundField DataField="jid" HeaderText="jid" SortExpression="jid" />
                    <asp:BoundField DataField="jobtitle" HeaderText="jobtitle" SortExpression="jobtitle" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                </center>
						<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:job %>" SelectCommand="SELECT [empid], [jid], [jobtitle] FROM [applyjobs] WHERE ([emailid] = @emailid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label1" Name="emailid" PropertyName="Text" Type="String" />
                            </SelectParameters>
            </asp:SqlDataSource>
						 <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
					
					</div>
				</div>
			</div>
         


</asp:Content>

