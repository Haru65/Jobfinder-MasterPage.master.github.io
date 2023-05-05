using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class getdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string lbltempo;
        string str;
        SqlCommand com;
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {

                string strConnString = ConfigurationManager.ConnectionStrings["job"].ConnectionString;
                lbltempo = Request.QueryString["id"];
                SqlConnection con = new SqlConnection(strConnString);
                str = "select * from [Registration] where id = '" + lbltempo + "'";
                com = new SqlCommand(str, con);
                con.Open();


                SqlDataReader reader = com.ExecuteReader();

                reader.Read();
                txtname.Text = reader["name"].ToString();
                txtemail.Text = reader["email"].ToString();
                txtmob.Text = reader["mobno"].ToString();
                txtqual.Text = reader["qual"].ToString();
                txtdob.Text = reader["dob"].ToString();
                txtspec.Text = reader["spec"].ToString();
                txtexp.Text = reader["exp"].ToString();
                txtlast.Text = reader["lsd"].ToString();
                txtesal.Text = reader["expectedsal"].ToString();
             
                reader.Close();
                con.Close();

         


            }
        }
    }
}