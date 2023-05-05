using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employeerdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void brnsearch_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select * from Registration where name like '" + txtsearch.Text + "%' or  qual like '" + txtsearch.Text + "%' ";
        txtsearch.Text = "";
    }
}