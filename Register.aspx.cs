using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
          //Chcck id and Register
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from login";
            SqlDataReader dr = cmd.ExecuteReader();
            int f = 0;
            while (dr.Read())
            {
                if (dr.GetValue(0).ToString().Equals(TextBox1.Text))
                {
                   
                        f = 1;
                        break;
                    
                }

            }
            if (f == 0)
            {
                conn.Close();
                conn.Open();
                cmd.CommandText = "insert into login values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Successfully Registed')</script>");
               
            }
            else
            {
                Response.Write("<script>alert('This Id is allready Registed')</script>");
            }
        }

        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}

    
   
    
    