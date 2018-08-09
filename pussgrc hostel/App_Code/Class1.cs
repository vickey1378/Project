using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


public class Class1
{

    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    int i;
    SqlDataReader dr;
    string s = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
    public int insert(string str)
    {
        con = new SqlConnection(s);
        con.Open();
        cmd = new SqlCommand(str);
        cmd.Connection = con;
        i = cmd.ExecuteNonQuery();
        return i;
        con.Close();
    }
    public SqlDataReader select(string str)
    {
        con = new SqlConnection(s);
        con.Open();
        cmd = new SqlCommand(str);
        cmd.Connection = con;
        dr = cmd.ExecuteReader();
        return dr;
        dr.Close();
        con.Close();
    }
    public DataSet disconnect(string str)
    {
        con = new SqlConnection(s);
        cmd = new SqlCommand(str);
        cmd.Connection = con;
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public int getnewid()
    {
        con = new SqlConnection(s);
        con.Open();
        cmd = new SqlCommand("select max(S_id) from student_reg");
        cmd.Connection = con;
        object res = cmd.ExecuteScalar();
        con.Close();
        return Convert.ToInt32(res) + 1;
    }
    public bool Chkroomawlbl(int roomno)
    {
        string qry = "select * from allocate where room_no='" + roomno + "'";
        DataSet ds = disconnect(qry);
        if (ds.Tables[0].Rows.Count < 4)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public bool ChkStuIdawlbl(int stuid)
    {
        string qry = "select * from allocate where s_id='" + stuid + "'";
        DataSet ds = disconnect(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
    public int GetStuId(string loginid)
    {
        string ss = "select s_id from student_reg where login_id='" + loginid + "'";
        con = new SqlConnection(s);
        con.Open();
        cmd = new SqlCommand(ss);
        cmd.Connection = con;
        object res = cmd.ExecuteScalar();
        con.Close();
        return Convert.ToInt32(res);

    }


}

