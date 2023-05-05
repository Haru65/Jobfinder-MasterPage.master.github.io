using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["job"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void rblist_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblist.SelectedValue == "Canidate")
        {
            Panel2.Visible = false;
            Panel1.Visible = true;
            Lblmsg.Text = "";

        }
        else if (rblist.SelectedValue == "Employeer")
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
            Lblmsg.Text = "";
        }
        else
        {
            Lblmsg.Text = "ok";
        }
    }

    protected void btnregister_Click(object sender, EventArgs e)
    {
        
        if (rblist.SelectedValue == "Canidate")
        {
            con.Open();
            string query1 = "insert into Registration values(@category,@name,@email,@password,@confirmpass,@mobno,@qual,@dob,@spec,@exp,@lsd,@expectedsal)";
            SqlCommand cmd = new SqlCommand(query1, con);
            cmd.Parameters.AddWithValue("category", rblist.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("name", txtname.Text);
            cmd.Parameters.AddWithValue("email", txtemail.Text);
            cmd.Parameters.AddWithValue("password", txtpass.Text);
            cmd.Parameters.AddWithValue("confirmpass", txtconfirmpass.Text);
            cmd.Parameters.AddWithValue("mobno", txtmobno.Text);
            cmd.Parameters.AddWithValue("qual", txtqual.Text);
            cmd.Parameters.AddWithValue("dob", txtdob.Text);
            cmd.Parameters.AddWithValue("spec", txtspecial.Text);
            cmd.Parameters.AddWithValue("exp", txtexp.Text);
            cmd.Parameters.AddWithValue("lsd", txtsal.Text);
            cmd.Parameters.AddWithValue("expectedsal", txtexpected.Text);
            Lblmsg.Visible = true;
            Lblmsg.Text = "Registration Done Successfully";
            cmd.ExecuteNonQuery();
            txtname.Text = ""; txtemail.Text = ""; txtmobno.Text = "";
            txtqual.Text = ""; txtdob.Text = "";
            txtspecial.Text = "";
            txtexp.Text = ""; txtsal.Text = "";
            txtexpected.Text = "";
            txtpass.Text = "";txtconfirmpass.Text = "";
        }
        else
        {

            con.Open();
            string query2 = "insert into Registration values(@category,@name,@email,@password,@confirmpass,@mobno,@qual,@dob,@spec,@exp,@lsd,@expectedsal)";
            SqlCommand cmd = new SqlCommand(query2, con);
            cmd.Parameters.AddWithValue("category", rblist.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("name", txtempname.Text);
            cmd.Parameters.AddWithValue("email", txtempemail.Text);
            cmd.Parameters.AddWithValue("password", txtemppass.Text);
            cmd.Parameters.AddWithValue("confirmpass", txtempconfirmpass.Text);
            cmd.Parameters.AddWithValue("qual", lblempty.Text);
            cmd.Parameters.AddWithValue("mobno", txtempmobno.Text);
            cmd.Parameters.AddWithValue("dob", txtempdob.Text);
            cmd.Parameters.AddWithValue("spec", lblempty.Text);
            cmd.Parameters.AddWithValue("exp", lblempty.Text);
            cmd.Parameters.AddWithValue("lsd", txtcsalary.Text);
            cmd.Parameters.AddWithValue("expectedsal", lblempty.Text);
            Lblmsg.Visible = true;
            Lblmsg.Text = "Registration Done Successfully";
            cmd.ExecuteNonQuery();
            txtempname.Text = ""; txtempemail.Text = ""; txtempmobno.Text = "";
            txtemppass.Text = ""; txtempconfirmpass.Text = "";
            txtempdob.Text = "";txtcsalary.Text = "";
      
       


        }

    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
}