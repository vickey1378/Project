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


public partial class see_complain : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
        //s = Session["aa"].ToString();
        //Label4.Text = "welcome" + " " + Session["aa"].ToString();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        con.Open();
        cmd = new SqlCommand("select * from  complain_dtl ", con);
        dr = cmd.ExecuteReader();
        grd.DataSource = dr;
        grd.DataBind();
        con.Close();
         
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


    }
}