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

public partial class repor_admin : System.Web.UI.Page
{
    Class1 aa = new Class1();
    string s, str;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["b"] != null)
        {
            Label4.Text = "welcome" + " " + Session["b"].ToString();
            s = "select * from outing";
            dr = aa.select(s);
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        else
        {
            Response.Redirect("login.aspx");
        }

    }
}
