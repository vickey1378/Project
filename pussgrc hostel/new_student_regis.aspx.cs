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

public partial class new_student_regis : System.Web.UI.Page
{
    int i;
    string str, s, dd, mm, yy,vtr;
    Class1 aa = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = System.DateTime.Now.ToShortDateString();
        //Label3.Text = System.DateTime.Now.ToLongTimeString();
        int id = aa.getnewid();///most important know about later //this is used for generating new userid;
        Label24.Text += id.ToString();//most important know about later
        if (!IsPostBack)
        {
            DropDownList1.Items.Insert(0, new ListItem("DD", ""));
            DropDownList2.Items.Insert(0, new ListItem("MM", ""));
            DropDownList3.Items.Insert(0, new ListItem("YY", ""));
            DropDownList4.Items.Insert(0, new ListItem("----Select---", ""));
            DropDownList5.Items.Insert(0, new ListItem("----Select---", ""));
            DropDownList6.Items.Insert(0, new ListItem("----Select----.", ""));
            DropDownList7.Items.Insert(0, new ListItem("----Select----", ""));
            for (i = 1; i < 32; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }
            for (i = 1; i < 13; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
            for (i = 1980; i < 2019; i++)
            {
                DropDownList3.Items.Add(i.ToString());
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string vtr = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox9.Text, "SHA1");
        dd = DropDownList1.SelectedItem.ToString();
        mm = DropDownList2.SelectedItem.ToString();
        yy = DropDownList3.SelectedItem.ToString();
        s = dd + "/" + mm + "/" + yy;
        str = "insert into student_reg values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + s + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + DropDownList4.SelectedItem.Text + "','" + DropDownList5.SelectedItem.Text + "','" + DropDownList6.SelectedItem.Text + "','" + DropDownList7.SelectedItem.Text + "','" + TextBox11.Text + "','" + aa.getnewid() + "','"+ Label2.Text+"')";
        i = aa.insert(str);
        if (i > 0)
        {
            Session["a"] = TextBox8.Text;
            Label23.Text = "registration complete";
            Response.Redirect("login.aspx");
        }
    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}