using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class getjobdetils : System.Web.UI.Page
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
                str = "select * from [addjobs] where jid = '" + lbltempo + "'";
                com = new SqlCommand(str, con);
                con.Open();


                SqlDataReader reader = com.ExecuteReader();

                reader.Read();
                txtjobtitle.Text = reader["title"].ToString();
                txtcname.Text = reader["cname"].ToString();
                txtsal.Text = reader["salary"].ToString();
                txtqual.Text = reader["qual"].ToString();
                txtspec.Text = reader["spec"].ToString();
                txthire.Text = reader["hire"].ToString();
                txtdesc.Text = reader["description"].ToString();
                txtloc.Text = reader["location"].ToString();
                txtjobn.Text = reader["jobnature"].ToString();
                txtexp.Text = reader["experience"].ToString();
                reader.Close();
                con.Close();




            }
        }
    }
}