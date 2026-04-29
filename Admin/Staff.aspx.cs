using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class Staff : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "insert into staff values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','"+TextBox6.Text+"')";
        cmd.ExecuteNonQuery();
        Label1.Text = "Values Submitted Successfully";
    }
}