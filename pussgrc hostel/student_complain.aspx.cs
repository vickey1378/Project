using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_complain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = new Class1().insert("insert into complain_dtl values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DateTime.Now.ToShortDateString() + "')");
        if (i > 0)
        {
            //Response.Redirect("student_welcome.aspx");
            Response.Write("<script>alert('complain has been registered')</script>");
            clear();
        }
        else
        {

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    public void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";

    }
}