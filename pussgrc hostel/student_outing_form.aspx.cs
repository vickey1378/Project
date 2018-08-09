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

public partial class student_outing_form : System.Web.UI.Page
{
    int i;
    string dd, mm, yy, d, m, y, a, b, c, d1, s, str;
    Class1 a1 = new Class1();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aa"] != null)
        {
            //Label2.Text = System.DateTime.Now.ToShortDateString();
            //Label3.Text = System.DateTime.Now.ToLongTimeString();
            str = Session["aa"].ToString();
            s = "select f_name from student_reg where login_id='" + str + "'";
            dr = a1.select(s);
            if (dr.Read())
            {
                TextBox2.Text = dr[0].ToString();
            }
            dr.Close();

            TextBox1.Text = str;
            if (!IsPostBack)
            {
                DropDownList1.Items.Insert(0, new ListItem("DD", ""));
                DropDownList2.Items.Insert(0, new ListItem("MM", ""));
                DropDownList3.Items.Insert(0, new ListItem("YY", ""));
                DropDownList4.Items.Insert(0, new ListItem("DD", ""));
                DropDownList5.Items.Insert(0, new ListItem("MM", ""));
                DropDownList6.Items.Insert(0, new ListItem("YY", ""));
                DropDownList7.Items.Insert(0, new ListItem("hh", ""));
                DropDownList8.Items.Insert(0, new ListItem("mm", ""));
                DropDownList9.Items.Insert(0, new ListItem("hh", ""));
                DropDownList10.Items.Insert(0, new ListItem("mm", ""));


                for (i = 1; i < 32; i++)
                {
                    DropDownList1.Items.Add(i.ToString());
                    DropDownList4.Items.Add(i.ToString());
                }
                for (i = 1; i < 13; i++)
                {
                    DropDownList2.Items.Add(i.ToString());
                    DropDownList5.Items.Add(i.ToString());
                    DropDownList7.Items.Add(i.ToString());
                    DropDownList9.Items.Add(i.ToString());

                }
                for (i = 2006; i < 2018; i++)
                {
                    DropDownList3.Items.Add(i.ToString());
                    DropDownList6.Items.Add(i.ToString());
                }
                for (i = 1; i < 60; i++)
                {
                    DropDownList8.Items.Add(i.ToString());
                    DropDownList10.Items.Add(i.ToString());
                }
            }
            dd = DropDownList1.SelectedItem.ToString();
            mm = DropDownList2.SelectedItem.ToString();
            yy = DropDownList3.SelectedItem.ToString();
            d = DropDownList4.SelectedItem.ToString();
            m = DropDownList5.SelectedItem.ToString();
            y = DropDownList6.SelectedItem.ToString();
        }
        else
        {
            Response.Redirect("student_welcome.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
          a = dd + "/" + mm + "/" + yy;
          b = d + "/" + m + "/" + y;
          c = DropDownList7.SelectedItem.Text + "/" + DropDownList8.SelectedItem.Text + "/" + DropDownList11.SelectedItem.Text;
          d1 = DropDownList9.SelectedItem.Text + "/" + DropDownList10.SelectedItem.Text + "/" + DropDownList12.SelectedItem.Text;
          s = "insert into outing values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + c + "','" + d1 + "','" + TextBox9.Text + "','" + a + "','" + b + "')";
          a1.insert(s);
          lb.Text = "Update Successfully";
          lb.ForeColor = System.Drawing.Color.Green;
          TextBox1.Text = TextBox2.Text = TextBox9.Text = "";
          DropDownList1.SelectedIndex = DropDownList10.SelectedIndex = DropDownList11.SelectedIndex = DropDownList12.SelectedIndex = DropDownList2.SelectedIndex = DropDownList3.SelectedIndex = DropDownList4.SelectedIndex = DropDownList5.SelectedIndex = DropDownList6.SelectedIndex = DropDownList7.SelectedIndex = DropDownList8.SelectedIndex = DropDownList9.SelectedIndex = -1;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        lb.Text = " ";
        TextBox1.Text = TextBox2.Text = TextBox9.Text = "";
        DropDownList1.SelectedIndex = DropDownList10.SelectedIndex = DropDownList11.SelectedIndex = DropDownList12.SelectedIndex = DropDownList2.SelectedIndex = DropDownList3.SelectedIndex = DropDownList4.SelectedIndex = DropDownList5.SelectedIndex = DropDownList6.SelectedIndex = DropDownList7.SelectedIndex = DropDownList8.SelectedIndex = DropDownList9.SelectedIndex = -1;
        Response.Redirect("student_welcome.aspx");
    }

    protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


}