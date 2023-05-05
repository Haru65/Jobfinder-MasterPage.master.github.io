using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contactus : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["job"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        con.Open();
        string query1 = "insert into feeback values(@name,@email,@msg)";
        SqlCommand cmd = new SqlCommand(query1, con);
        cmd.Parameters.AddWithValue("name", txtname.Text);
        cmd.Parameters.AddWithValue("email", txtemail.Text);
        cmd.Parameters.AddWithValue("msg", txtmsg.InnerText);
        Lblmsg.Visible = true;
        Lblmsg.Text = "Thank You for ur feedback...";
        cmd.ExecuteNonQuery();
        txtname.Text = "";
        txtemail.Text = "";
        txtmsg.InnerText = "";
    }
}