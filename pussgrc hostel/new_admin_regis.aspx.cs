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

public partial class new_admin_regis : System.Web.UI.Page
{
    string str, s, dd, mm, yy;
    int i;
    Class1 aa = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Items.Insert(0, new ListItem("DD", ""));
            DropDownList2.Items.Insert(0, new ListItem("MM", ""));
            DropDownList3.Items.Insert(0, new ListItem("YY", ""));
            for (i = 1; i < 32; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }
            for (i = 1; i < 13; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
            for (i = 1975; i < 2019; i++)
            {
                DropDownList3.Items.Add(i.ToString());
            }
        }
        dd = DropDownList1.SelectedItem.ToString();
        mm = DropDownList2.SelectedItem.ToString();
        yy = DropDownList3.SelectedItem.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        s = dd + "/" + mm + "/" + yy;
        str = "insert into vorden values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + s + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox3.Text + "')";
        i = aa.insert(str);
        if (i > 0)
        {
            Session["aa"] = TextBox8.Text;
            Response.Redirect("admin_welcome.aspx");
        }
    }


    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_welcome.aspx");
    }
}