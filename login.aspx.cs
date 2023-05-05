using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=job;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["job"].ConnectionString);
        string s = "select * from Registration";
        SqlCommand com = new SqlCommand(s, con);
        con.Open();
        if (con.State == ConnectionState.Open)
        {

            SqlDataReader dtr;
            dtr = com.ExecuteReader();
            while (dtr.Read())
            {
                if (dtr[3].ToString().Equals(txtemail.Text) && dtr[4].ToString().Equals(txtpass.Text))
                {


                    Response.Cookies["uname"].Value = txtemail.Text;
                    Response.Cookies["pass"].Value = txtpass.Text;
                    Response.Cookies["category"].Value = dtr[1].ToString();
                    System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txtemail.Text, false);
                    Session["email"] = txtemail.Text;
                    Response.Redirect("Home.aspx");
                    // (this.Master as MasterPage).usermethod();
                }
                else if ((txtemail.Text == "admin@gmail.com" && txtpass.Text == "admin"))
                {
                    Response.Cookies["uname"].Value = txtemail.Text;
                    Response.Cookies["pass"].Value = txtpass.Text;
                    //Response.Cookies["role"].Value = dtr[2].ToString();
                    FormsAuthentication.RedirectFromLoginPage(txtemail.Text, false);
                    Response.Redirect("Home.aspx");
                    // (this.Master as MasterPage).adminmethod();
                }
                else
                {
                    Label3.Text = "Invalid Username or Password";

                }


            }
        }
    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
        
    }
}