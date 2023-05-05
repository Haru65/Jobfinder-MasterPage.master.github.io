using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["email"]!=null)
        {
            Label1.Text = Session["email"].ToString();
        }
        if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
        {
            blog.Visible = false;
            about.Visible = true;
            addjob.Visible = false;
            searchjobs.Visible = true;
            appliedjobs.Visible = true;
            show.Visible = false;
            jobist.Visible = false;
            report.Visible = false;
            register.Visible = false;

            if (Request.Cookies["uname"].Value == "admin@gmail.com" && Request.Cookies["pass"].Value == "admin")
            {

                blog.Visible = true;
                about.Visible = true;
                addjob.Visible = false;
                searchjobs.Visible = true;
                appliedjobs.Visible = false;
                show.Visible = false;
                jobist.Visible = false;
                report.Visible = true;
                register.Visible = false;

            }
            else if(Request.Cookies["category"].Value == "Employeer")
            {
                blog.Visible = true;
                about.Visible = false;
                addjob.Visible = true;
                searchjobs.Visible = false;
                appliedjobs.Visible = false;
                show.Visible = true;
                jobist.Visible = true;
                report.Visible = false;
                register.Visible = false;
            }
        }
    }

    protected void LoginStatus1_LoggedOut(object sender, EventArgs e)
    {
        if(Session["email"]!=null)
        {
            Session.Remove("email");
        }
    }
}
