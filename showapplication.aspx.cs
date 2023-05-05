using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showapplication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            Label1.Text = Session["email"].ToString();
        }
    }

    protected void brnsearch_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select * from Registration where name like '" + txtsearch.Text + "%' or  qual like '" + txtsearch.Text + "%' ";
        txtsearch.Text = "";
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ids = GridView1.SelectedRow.Cells[2].Text;
        Response.Redirect("getjobdetils.aspx?id=" + ids);
    }
}