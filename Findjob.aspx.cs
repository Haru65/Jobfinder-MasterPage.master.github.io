using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Findjob : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["job"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnsearch_Click(object sender, EventArgs e)
    {
        if (DataList1.Items.Count!=0)
        {
            SqlDataSource1.SelectCommand = "select * from addjobs where title like '" + txtsorttitle.Text + "%' and  location like '" + txtsortlocation.Text + "%' ";
            txtsorttitle.Text = "";
       
        }
        else
        {
            Label3.Text = "No records found!";
        }

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedItem.Text=="Recently")
        {
            SqlDataSource1.SelectCommand = "select * from addjobs ORDER BY [jid] DESC";
        }
        else
        {
            SqlDataSource1.SelectCommand = "select * from addjobs";

        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.SelectedIndex = e.Item.ItemIndex;

        Label1.Text = ((Label)DataList1.SelectedItem.FindControl("lbljobid")).Text;
        Label2.Text= ((Label)DataList1.SelectedItem.FindControl("lblempid")).Text;
        Response.Redirect("Jobdescription.aspx?id="+ Label1.Text +"&eid="+Label2.Text);
    }
}