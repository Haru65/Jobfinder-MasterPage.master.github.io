using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Addjobs : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["job"].ConnectionString);
    string asd, str, Label2;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand com3, com4;
       
        newid();
        if (Session["email"] != null)
        {
           asd = Session["email"].ToString();
            str = "select id from [Registration] where email ='" + asd + "'";
            com3 = new SqlCommand(str, con);
            con.Open();
            SqlDataReader reader = com3.ExecuteReader();
            reader.Read();

            Label2 = reader["id"].ToString();
            reader.Close();
            con.Close();

        }
    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        Response.Redirect("Addjobs.aspx");
    }
    public void newid()
    {

        con.Open();

        string query2 = "SELECT max(no) + 1 FROM addjobs ";
        SqlCommand cmd1 = new SqlCommand(query2, con);
        txtjobid.Text = cmd1.ExecuteScalar().ToString();


        con.Close();
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string initial = "J";
        con.Open();
        string query1 = "insert into addjobs values(@char,@no,@jid,@title,@cname,@salary,@qual,@spec,@hire,@description,@location,@jobnature,@experience,@empid)";
        SqlCommand cmd = new SqlCommand(query1, con);
        cmd.Parameters.AddWithValue("char", initial);
        cmd.Parameters.AddWithValue("no", txtjobid.Text);
        cmd.Parameters.AddWithValue("jid", initial + txtjobid.Text);
        cmd.Parameters.AddWithValue("title", txtjobtitle.Text);
        cmd.Parameters.AddWithValue("cname", txtcname.Text);
        cmd.Parameters.AddWithValue("salary", txtsalary.Text);
        cmd.Parameters.AddWithValue("qual", txtqual.Text);
        cmd.Parameters.AddWithValue("spec", txtspecialization.Text);
        cmd.Parameters.AddWithValue("hire", txthire.Text);
        cmd.Parameters.AddWithValue("description", txtdescription.InnerText);
        cmd.Parameters.AddWithValue("location", txtlocation.Text);
        cmd.Parameters.AddWithValue("jobnature", txtjobnature.Text);
        cmd.Parameters.AddWithValue("experience", txtexperience.Text);
        cmd.Parameters.AddWithValue("empid",Label2);

        cmd.ExecuteNonQuery();
        txtjobtitle.Text = "";
        txtsalary.Text = "";
        txtcname.Text = "";
        txtqual.Text = "";
        txthire.Text = "";
        txtdescription.InnerText = "";
        txtlocation.Text = "";
        txtspecialization.Text = "";
        txtjobnature.Text = "";
        txthire.Text = "";

        lblmsg.Visible = true;
        lblmsg.Text = "Data Submited Successfully...";
        con.Close();
        newid();
        //Response.Redirect("Addjobs.aspx");


    }
}