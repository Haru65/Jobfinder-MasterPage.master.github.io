<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Job list</h2>
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

                    </div>

                </div>
                <hr />
			<asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="jid" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="empid" HeaderText="empid" SortExpression="empid" />
                    <asp:BoundField DataField="jid" HeaderText="jid" SortExpression="jid" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                    <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                    <asp:BoundField DataField="qual" HeaderText="qual" SortExpression="qual" />
                    <asp:BoundField DataField="spec" HeaderText="spec" SortExpression="spec" />
                    <asp:BoundField DataField="hire" HeaderText="hire" SortExpression="hire" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
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
						<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:job %>" SelectCommand="SELECT [jid], [title], [cname], [salary], [qual], [spec], [hire], [description], [location], [empid] FROM [addjobs] WHERE ([empid] = @empid)" DeleteCommand="DELETE FROM [addjobs] WHERE [jid] = @jid;DELETE FROM [applyjobs] WHERE [jid] = @jid" InsertCommand="INSERT INTO [addjobs] ([jid], [title], [cname], [salary], [qual], [spec], [hire], [description], [location], [empid]) VALUES (@jid, @title, @cname, @salary, @qual, @spec, @hire, @description, @location, @empid)" UpdateCommand="UPDATE [addjobs] SET [title] = @title, [cname] = @cname, [salary] = @salary, [qual] = @qual, [spec] = @spec, [hire] = @hire, [description] = @description, [location] = @location, [empid] = @empid WHERE [jid] = @jid">
                            <DeleteParameters>
                                <asp:Parameter Name="jid" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="jid" Type="String" />
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="cname" Type="String" />
                                <asp:Parameter Name="salary" Type="String" />
                                <asp:Parameter Name="qual" Type="String" />
                                <asp:Parameter Name="spec" Type="String" />
                                <asp:Parameter Name="hire" Type="String" />
                                <asp:Parameter Name="description" Type="String" />
                                <asp:Parameter Name="location" Type="String" />
                                <asp:Parameter Name="empid" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label31" Name="empid" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="cname" Type="String" />
                                <asp:Parameter Name="salary" Type="String" />
                                <asp:Parameter Name="qual" Type="String" />
                                <asp:Parameter Name="spec" Type="String" />
                                <asp:Parameter Name="hire" Type="String" />
                                <asp:Parameter Name="description" Type="String" />
                                <asp:Parameter Name="location" Type="String" />
                                <asp:Parameter Name="empid" Type="String" />
                                <asp:Parameter Name="jid" Type="String" />
                            </UpdateParameters>
            </asp:SqlDataSource>
						 <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
					<asp:Label ID="Label2" runat="server" Text=""  Visible="false"></asp:Label><asp:Label ID="Label31" runat="server" Text=""  Visible="false"></asp:Label>
					</div>
				</div>
			</div>
</asp:Content>

