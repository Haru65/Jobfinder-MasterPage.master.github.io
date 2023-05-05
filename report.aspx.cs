using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnregistration_Click(object sender, EventArgs e)
    {
        grregistration.Visible = true;
        graddjob.Visible = false;
        grapplyjob.Visible = false;
        grfeedback.Visible = false;
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        grregistration.Visible = false;
        graddjob.Visible = true;
        grapplyjob.Visible = false;
        grfeedback.Visible = false;
    }

    protected void btnapply_Click(object sender, EventArgs e)
    {
        grregistration.Visible = false;
        graddjob.Visible = false;
        grapplyjob.Visible = true;
        grfeedback.Visible = false;
    }

    protected void btnfeedback_Click(object sender, EventArgs e)
    {
        grregistration.Visible = false;
        graddjob.Visible = false;
        grapplyjob.Visible = false;
        grfeedback.Visible = true;
    }
}