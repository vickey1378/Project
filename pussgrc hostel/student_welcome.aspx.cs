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

public partial class student_welcome : System.Web.UI.Page
{
    string s;
    SqlDataReader dr;
    Class1 a = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aa"] != null)
        {
            Label4.Text = "Welcome" + " " + Session["aa"].ToString();
            //Label2.Text = System.DateTime.Now.ToShortDateString();
            //Label3.Text = System.DateTime.Now.ToLongTimeString();
            s = "select * from student_reg where login_id='" + Session["aa"].ToString() + "'";
            dr = a.select(s);
            DetailsView1.DataSource = dr;
            DetailsView1.DataBind();
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
}