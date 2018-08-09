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
//using System.Windows.Forms;
public partial class login : System.Web.UI.Page
{
    Class1 aa = new Class1();
    SqlDataReader dr;
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label2.Text = System.DateTime.Now.ToShortDateString();
        //Label3.Text = System.DateTime.Now.ToLongTimeString();
        Login1.Visible = false;
        Login2.Visible = false;
        HyperLink1.Visible = false;
        HyperLink2.Visible = false;
        HyperLink3.Visible = false;
        HyperLink4.Visible = false;
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
            Login1.Visible = true;
            HyperLink1.Visible = true;
            HyperLink2.Visible = true;
            HyperLink3.Visible = false;
            HyperLink4.Visible = false;
            Login2.Visible = false;
            Label4.Text = "";
        }
        else
        {
            Login2.Visible = true;
            HyperLink3.Visible = true;
            HyperLink4.Visible = true;
            HyperLink1.Visible = false;
            HyperLink2.Visible = false;
            Login1.Visible = false;
            Label4.Text = "";
        }
    }

    // for student login
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            s = "select login_id,pwd,S_id from student_reg where login_id='" + Login1.UserName + "' and pwd='" + Login1.Password + "'";
            dr = aa.select(s);
            if (dr.Read())
            {
                Session["aa"] = Login1.UserName;
                Session["uid"] = dr[2].ToString();
                Response.Redirect("student_welcome.aspx");
            }
            else
            {
                Login1.Visible = true;
                Label4.Text = "Please Enter Correct Password and Login ID";
                Label4.ForeColor = System.Drawing.Color.Green;

                HyperLink1.Visible = true;
                HyperLink2.Visible = true;
            }
            dr.Close();
        }
        catch (Exception ex)
        {
            // Label4.Text = ex.ToString();
         
        }
    }

    // For admin Login
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            s = "select login_id,password from vorden where login_id='" + Login2.UserName + "' and password='" + Login2.Password + "'";
            dr = aa.select(s);
            if (dr.Read())
            {
                Session["b"] = Login2.UserName;
                Response.Redirect("admin_welcome.aspx");
            }
            else
            {
              Label4.Text="Please Enter Correct Password and Login ID";
              Label4.ForeColor = System.Drawing.Color.Green;

                Login2.Visible = true;
                HyperLink3.Visible = true;
                HyperLink4.Visible = true;
            }
            dr.Close();
        }
        catch (Exception ex)
        {
            //Label4.Text = ex.ToString();
            //   MessageBox.Show(ex.ToString());
        }
    }
    protected void UserName_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Login2_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }
    protected void Login2_Authenticate1(object sender, AuthenticateEventArgs e)
    {

    }
}
