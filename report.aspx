<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style type="text/css">

.Grid th
{
    color: #fff;
    background-color: #fb246a;
}
/* CSS to change the GridLines color */
.Grid, .Grid th, .Grid td
{
    border:1px solid #000000;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Report</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       </div>
    <div class="job-listing-area pt-120 pb-120">
            <div class="container">
    <center>
    <asp:Button ID="btnregistration" runat="server" Text="User Details" CssClass="button button-contactForm boxed-btn" OnClick="btnregistration_Click"/>
    <asp:Button ID="btnadd" runat="server" Text="Add Job Details" CssClass="button button-contactForm boxed-btn" OnClick="btnadd_Click"/>
    <asp:Button ID="btnapply" runat="server" Text="Applied Job Details" CssClass="button button-contactForm boxed-btn" OnClick="btnapply_Click"/>
    <asp:Button ID="btnfeedback" runat="server" Text="Feedback Details" CssClass="button button-contactForm boxed-btn" OnClick="btnfeedback_Click"/>
        </center>
    <br />
    <center>
<asp:GridView ID="grregistration" runat="server" CssClass="Grid" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Visible="false">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="mobno" HeaderText="mobno" SortExpression="mobno" />
        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
        <asp:BoundField DataField="confirmpass" HeaderText="confirmpass" SortExpression="confirmpass" />
        <asp:BoundField DataField="qual" HeaderText="qual" SortExpression="qual" />
        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
        <asp:BoundField DataField="spec" HeaderText="spec" SortExpression="spec" />
        <asp:BoundField DataField="exp" HeaderText="exp" SortExpression="exp" />
        <asp:BoundField DataField="lsd" HeaderText="lsd" SortExpression="lsd" />
        <asp:BoundField DataField="expectedsal" HeaderText="expectedsal" SortExpression="expectedsal" />
    </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:job %>" DeleteCommand="DELETE FROM [Registration] WHERE [id] = @id" InsertCommand="INSERT INTO [Registration] ([category], [name], [email], [mobno], [password], [confirmpass], [qual], [dob], [spec], [exp], [lsd], [expectedsal]) VALUES (@category, @name, @email, @mobno, @password, @confirmpass, @qual, @dob, @spec, @exp, @lsd, @expectedsal)" SelectCommand="SELECT * FROM [Registration]" UpdateCommand="UPDATE [Registration] SET [category] = @category, [name] = @name, [email] = @email, [mobno] = @mobno, [password] = @password, [confirmpass] = @confirmpass, [qual] = @qual, [dob] = @dob, [spec] = @spec, [exp] = @exp, [lsd] = @lsd, [expectedsal] = @expectedsal WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mobno" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="confirmpass" Type="String" />
                <asp:Parameter Name="qual" Type="String" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="spec" Type="String" />
                <asp:Parameter Name="exp" Type="String" />
                <asp:Parameter Name="lsd" Type="String" />
                <asp:Parameter Name="expectedsal" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mobno" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="confirmpass" Type="String" />
                <asp:Parameter Name="qual" Type="String" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="spec" Type="String" />
                <asp:Parameter Name="exp" Type="String" />
                <asp:Parameter Name="lsd" Type="String" />
                <asp:Parameter Name="expectedsal" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
    <center>
<asp:GridView ID="graddjob" runat="server" CssClass="Grid" AutoGenerateColumns="False" DataKeyNames="jid" DataSourceID="SqlDataSource2" Visible="false">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="char" HeaderText="char" SortExpression="char" />
        <asp:BoundField DataField="no" HeaderText="no" SortExpression="no" />
        <asp:BoundField DataField="jid" HeaderText="jid" ReadOnly="True" SortExpression="jid" />
        <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
        <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
        <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
        <asp:BoundField DataField="qual" HeaderText="qual" SortExpression="qual" />
        <asp:BoundField DataField="spec" HeaderText="spec" SortExpression="spec" />
        <asp:BoundField DataField="hire" HeaderText="hire" SortExpression="hire" />
        <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
        <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
        <asp:BoundField DataField="empid" HeaderText="empid" SortExpression="empid" />
    </Columns>
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:job %>" DeleteCommand="DELETE FROM [addjobs] WHERE [jid] = @jid" InsertCommand="INSERT INTO [addjobs] ([char], [no], [jid], [title], [cname], [salary], [qual], [spec], [hire], [description], [location], [empid]) VALUES (@char, @no, @jid, @title, @cname, @salary, @qual, @spec, @hire, @description, @location, @empid)" SelectCommand="SELECT * FROM [addjobs]" UpdateCommand="UPDATE [addjobs] SET [char] = @char, [no] = @no, [title] = @title, [cname] = @cname, [salary] = @salary, [qual] = @qual, [spec] = @spec, [hire] = @hire, [description] = @description, [location] = @location, [empid] = @empid WHERE [jid] = @jid">
            <DeleteParameters>
                <asp:Parameter Name="jid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="char" Type="String" />
                <asp:Parameter Name="no" Type="Int32" />
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
            <UpdateParameters>
                <asp:Parameter Name="char" Type="String" />
                <asp:Parameter Name="no" Type="Int32" />
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
    </center>
    <center>
<asp:GridView ID="grapplyjob" runat="server" CssClass="Grid" Visible="False" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
    <Columns>
        <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
        <asp:BoundField DataField="jid" HeaderText="jid" SortExpression="jid" />
        <asp:BoundField DataField="empid" HeaderText="empid" SortExpression="empid" />
        <asp:BoundField DataField="jobtitle" HeaderText="jobtitle" SortExpression="jobtitle" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
        <asp:BoundField DataField="mobno" HeaderText="mobno" SortExpression="mobno" />
        <asp:BoundField DataField="qual" HeaderText="qual" SortExpression="qual" />
        <asp:BoundField DataField="specialization" HeaderText="specialization" SortExpression="specialization" />
        <asp:BoundField DataField="experiance" HeaderText="experiance" SortExpression="experiance" />
    </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:job %>" SelectCommand="SELECT * FROM [applyjobs]"></asp:SqlDataSource>
    </center>
    <center>
<asp:GridView ID="grfeedback" CssClass="Grid" runat="server" Visible="False" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource4">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="msg" HeaderText="msg" SortExpression="msg" />
    </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:job %>" DeleteCommand="DELETE FROM [feeback] WHERE [id] = @id" InsertCommand="INSERT INTO [feeback] ([name], [email], [msg]) VALUES (@name, @email, @msg)" SelectCommand="SELECT * FROM [feeback]" UpdateCommand="UPDATE [feeback] SET [name] = @name, [email] = @email, [msg] = @msg WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="msg" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="msg" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
                </div>
        </div>
</asp:Content>

