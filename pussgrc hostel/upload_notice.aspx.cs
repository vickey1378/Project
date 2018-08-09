using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class upload_notice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = new Class1().insert("insert into notice_dtl values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DateTime.Now.ToShortDateString() + "')");
        if (i > 0)
        {
            //Response.Redirect("admin_welcome.aspx");
            Response.Write("<script>alert('Notice has been uploaded')</script>");
            clear();
        }
        else
        {
           
        }
    }
    public void clear()
    {
      TextBox1.Text = "";
      TextBox2.Text = "";
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}