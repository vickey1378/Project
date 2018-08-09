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

public partial class student_change_password : System.Web.UI.Page
{
    string s;
    SqlConnection con;
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         con = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        da = new SqlDataAdapter("select pwd from student_reg where pwd='" + txtcp.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count.ToString() == "1")
        {
            if (txtpwd.Text == txtcpwd.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update student_reg set pwd='" + txtcpwd.Text + "' where login_id='" + s + "'and pwd='" + txtcp.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lb.Text = "successfully updated";
                lb.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lb.Text = "new password and confirm password should be same!";
                lb.ForeColor = System.Drawing.Color.Green;
            }
        }
        else
        {
            lb.Text = "please check your current password";
            lb.ForeColor = System.Drawing.Color.Green;
        }
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        s = txt1.Text;
    }


    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}