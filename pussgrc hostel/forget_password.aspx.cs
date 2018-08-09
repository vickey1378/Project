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

public partial class forget_password : System.Web.UI.Page
{
    string str;
    Class1 a = new Class1();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label2.Text = System.DateTime.Now.ToShortDateString();
        //Label3.Text = System.DateTime.Now.ToLongTimeString();
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        str = "select login_id,mo_name,dad_name,pwd from student_reg where login_id='" + TextBox1.Text + "' and mo_name='" + TextBox2.Text + "' and dad_name='" + TextBox3.Text + "'";
        dr = a.select(str);
        if (dr.Read())
        {
            Label8.Text = "Your Password Is" + "--" + dr["pwd"].ToString();
        }
        dr.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}