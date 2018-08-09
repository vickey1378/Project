using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class student_fee_dtl : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label2.Text = System.DateTime.Now.ToShortDateString();
        //Label3.Text = System.DateTime.Now.ToLongTimeString();
        if (Session["aa"] != null)
        {
            int id = obj.GetStuId(Session["aa"].ToString());
            string qry = "select * from feedtl where s_id='" + Session["uid"] + "'";
            DataSet ds = obj.disconnect(qry);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}
