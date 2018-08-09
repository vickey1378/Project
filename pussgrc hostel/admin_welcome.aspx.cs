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

public partial class admin_welcome : System.Web.UI.Page
{
    SqlDataReader dr;
    string s;
    Class1 a = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["b"] != null)
        {
            Label1.Text ="Welcome"+" "+Session["b"].ToString();
            s = "select * from vorden where login_id='" +Session["b"].ToString() + "'";
            dr = a.select(s);
            DetailsView1.DataSource = dr;
            DetailsView1.DataBind();
        }
        else
        {
            Response.Redirect("login.aspx");
        }

    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        Response.Redirect("new_admin_regis.aspx");
    }
}