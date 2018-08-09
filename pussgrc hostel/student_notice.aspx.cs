using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class student_notice : System.Web.UI.Page
{
    Class1 a = new Class1();
    string str, s;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aa"] != null)
        {
            s = Session["aa"].ToString();
            Label4.Text = "welcome" + " " + Session["aa"].ToString();
        }
        else
        {
            Response.Redirect("student_welcome.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


    }
}