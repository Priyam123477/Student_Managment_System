using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Examresult : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Student.mdf;Integrated Security=True");
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        conn.Open();
         if (!Page.IsPostBack == true)
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from exam";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetValue(0).ToString());
            }
            dr.Close();
            cmd.CommandText = "select * from student";
            SqlDataReader dr1 = cmd.ExecuteReader();
            while (dr1.Read())
            {
                DropDownList2.Items.Add(dr1.GetValue(0).ToString());
            }
            dr1.Close();
            cmd.CommandText = "select * from course";
            SqlDataReader dr2 = cmd.ExecuteReader();
            while (dr2.Read())
            {
                DropDownList3.Items.Add(dr2.GetValue(0).ToString());
            }
            dr2.Close();

        }
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //new
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        // save the record
        conn.Close();
        conn.Open();
        conn.Open();
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "insert into exam_result values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Saved')</script>");
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        // update the record
        conn.Close();
        conn.Open();
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "update exam_result set student_id='" + TextBox2.Text + "',course_id='" + TextBox3.Text + "',marks='" + TextBox4.Text + "' where exam_id='" + TextBox1.Text + "' ";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Updated')</script>");
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        // delete the record
        conn.Close();
        conn.Open();
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "delete from exam_result where exam_id='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Deleted')</script>");
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //All search
        conn.Close();
        conn.Open();
        SqlDataSource1.SelectCommand = "select * from exam_result";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //Psearch
        //Particular Search
        conn.Close();
        conn.Open();
        SqlDataSource1.SelectCommand = "select * from exam_result where exam_id='" + TextBox1.Text + "'";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = DropDownList1.SelectedValue.ToString();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox2.Text = DropDownList2.SelectedValue.ToString();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox3.Text = DropDownList3.SelectedValue.ToString();
    }
}