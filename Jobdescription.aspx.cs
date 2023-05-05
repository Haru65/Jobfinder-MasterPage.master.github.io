using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Jobdescription : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["job"].ConnectionString);
    string str, easter,taq;
    SqlCommand com3, com4;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                
                lbltempo.Text = Request.QueryString["id"];
                lbltempo2.Text = Request.QueryString["eid"];
                str = "select * from addjobs where jid ='" + lbltempo.Text + "'";
                com3 = new SqlCommand(str, con);
                con.Open();
                SqlDataReader reader = com3.ExecuteReader();
                reader.Read();

                lbltitle.Text = reader["title"].ToString();
                lblcname.Text = reader["cname"].ToString();
                lbllocation.Text = reader["location"].ToString();
                lblsalary.Text = reader["salary"].ToString();
                lblspecialization.Text = reader["spec"].ToString();
                lbljobdescription.Text = reader["description"].ToString();
                lbljobsal.Text = reader["salary"].ToString();
                lblhires.Text = reader["hire"].ToString();
                ljoblocation.Text = reader["location"].ToString();
                lblqual.Text = reader["qual"].ToString();
                lblcompname.Text= reader["cname"].ToString();
                lbljobnature.Text= reader["jobnature"].ToString();
                lblexperience.Text = reader["experience"].ToString();



                reader.Close();
                con.Close();

            }
        }
    }

    protected void btnapply_Click(object sender, EventArgs e)
    {
       
        if (Session["email"] != null)
        {

            con.Open();
            string qwe = Session["email"].ToString();
            easter = "select * from Registration where email ='" + qwe + "'";
            com4 = new SqlCommand(easter, con);

            SqlDataReader reader = com4.ExecuteReader();
            reader.Read();

            Label1.Text = reader["id"].ToString();
            lblname.Text = reader["name"].ToString();
            lblemailid.Text = qwe;
            lblmobno.Text = reader["mobno"].ToString();
            lblqualification.Text = reader["qual"].ToString();
            lblspecialist.Text = reader["spec"].ToString();
            lblexp.Text = reader["exp"].ToString();

            reader.Close();
            con.Close();


        }
        con.Open();
        string query1 = "insert into applyjobs values(@cid,@jid,@empid,@jobtitle,@name,@emailid,@mobno,@qual,@specialization,@experiance)";
        SqlCommand cmd = new SqlCommand(query1, con);
        cmd.Parameters.AddWithValue("cid", Label1.Text);
        cmd.Parameters.AddWithValue("jid", lbltempo.Text);
        cmd.Parameters.AddWithValue("empid", lbltempo2.Text);
        cmd.Parameters.AddWithValue("jobtitle", lbltitle.Text);
        cmd.Parameters.AddWithValue("name", lblname.Text);
        cmd.Parameters.AddWithValue("emailid", lblemailid.Text);
        cmd.Parameters.AddWithValue("mobno", lblmobno.Text);
        cmd.Parameters.AddWithValue("qual", lblqualification.Text);
        cmd.Parameters.AddWithValue("specialization", lblspecialist.Text);
        cmd.Parameters.AddWithValue("experiance", lblexp.Text);

        cmd.ExecuteNonQuery();
        string message = "Your Application is submitted successfully!!!";
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        sb.Append("<script type = 'text/javascript'>");
        sb.Append("window.onload=function(){");
        sb.Append("alert('");
        sb.Append(message);
        sb.Append("')};");
        sb.Append("</script>");
        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
    }
}
