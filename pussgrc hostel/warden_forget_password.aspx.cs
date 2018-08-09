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
public partial class warden_forget_password : System.Web.UI.Page
{
    string str;
    Class1 a = new Class1();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label2.Text = System.DateTime.Now.ToShortDateString();
        //Label3.Text = System.DateTime.Now.ToLongTimeString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        str = "select login_id,mobile_no,Employee_id,password from vorden where login_id='" + TextBox1.Text + "' and mobile_no='" + TextBox2.Text + "' and employee_id='" + TextBox3.Text + "'";
        dr = a.select(str);
        if (dr.Read())
        {
            Label8.Text = "Your Password Is" + "--" + dr["password"].ToString();
        }
        dr.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}