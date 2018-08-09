using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class fee_submittion_admin : System.Web.UI.Page
{
    int am;
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            int am = (int.Parse(TextBox3.Text) + int.Parse(TextBox4.Text) + int.Parse(TextBox5.Text));
            int i = obj.insert("insert into FeeDtl values(" + Convert.ToInt32(TextBox9.Text) + "," + Convert.ToInt32(TextBox2.Text) + ",'" + TextBox6.Text + "','" + TextBox1.Text + "','" + TextBox10.Text + "'," + am + "," + Convert.ToInt32(TextBox3.Text) + "," + Convert.ToInt32(TextBox4.Text) + "," + Convert.ToInt32(TextBox5.Text) + "," + Convert.ToInt32(TextBox7.Text) + "," + (am - int.Parse(TextBox7.Text)) + ",'" + DropDownList7.SelectedValue + "'," + Convert.ToInt32(TextBox8.Text) + ",'" + Calendar1.SelectedDate + "')");

            Label6.Text = "Fee Submited";
            Label6.ForeColor = System.Drawing.Color.Green;
            clear();
          
        }
        catch
        {
            Label6.Text = "Fee is not submitted!";
            Label6.ForeColor = System.Drawing.Color.Green;
        }

    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {
        Label7.Text = (int.Parse(TextBox3.Text) + int.Parse(TextBox4.Text) + int.Parse(TextBox5.Text)).ToString();
    }

    protected void DropDownList7_SelectedIndexChanged1(object sender, EventArgs e)
    {
        am = (int.Parse(TextBox3.Text) + int.Parse(TextBox4.Text) + int.Parse(TextBox5.Text));
        Label8.Text = (int.Parse(TextBox7.Text) - am).ToString();
    }
   


    protected void LinkButton1_Click(object sender, EventArgs e)   //for linkbutton
    {
        DataSet ds = obj.disconnect("select * from student_reg where S_id='" + TextBox9.Text + "'");
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            if (ds.Tables[0].Rows[i][15].ToString() == TextBox9.Text)
            {
                TextBox10.Text = ds.Tables[0].Rows[i][12].ToString();
                TextBox1.Text = ds.Tables[0].Rows[i][10].ToString();
                TextBox6.Text = ds.Tables[0].Rows[i][0].ToString();
            }
        }
    }
    public void clear()
    {
        TextBox4.Text = "";
        TextBox1.Text = "";
        TextBox10.Text = "";
        TextBox6.Text = "";
        TextBox3.Text = "";
        TextBox5.Text = "";
        TextBox2.Text = "";
        TextBox7.Text = "";
        TextBox9.Text = "";
        TextBox8.Text = "";
        Label7.Text.Remove(0);

        Label8.Text.Remove(0);

    }

}