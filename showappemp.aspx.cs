using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showappemp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["job"].ConnectionString);
    string str, easter, taq;
    SqlCommand com3, com4;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            Label1.Text = Session["email"].ToString();
            str = "select * from [Registration] where email ='" + Label1.Text + "'";
            com3 = new SqlCommand(str, con);
            con.Open();
            SqlDataReader reader = com3.ExecuteReader();
            reader.Read();

            Label2.Text = reader["id"].ToString();
            reader.Close();
            con.Close();
            taq = "select * from [applyjobs] where empid ='" + Label2.Text + "'";
            com4 = new SqlCommand(taq, con);
            con.Open();
            SqlDataReader reader1 = com4.ExecuteReader();
            if (reader1.Read())
            {
                Label31.Text = reader1["empid"].ToString();
                reader1.Close();
                con.Close();
            }
            else
            {
                Label3.Text = "NO APPLICATIONS";
            }

        }
    }
    protected void brnsearch_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select * from Registration where name like '" + txtsearch.Text + "%' or  qual like '" + txtsearch.Text + "%' ";
        txtsearch.Text = "";
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ids = GridView1.SelectedRow.Cells[4].Text;
        Response.Redirect("getdetails.aspx?id=" + ids);
    }
}