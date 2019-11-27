using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

public partial class admin : System.Web.UI.Page
{
	
	protected void Button1_Click(object sender, System.EventArgs e)
	{
        /*SqlConnection con = DBConnection.getConnection();
		if (ReferenceEquals(con, null))
		{
			Literal1.Text = "<h2> Database connection error.</h2>";
			return;
		}
		con.Open();
		var qry = "select * from admin1 where username='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'";
		SqlCommand com = new SqlCommand(qry, con);
		SqlDataReader dr = com.ExecuteReader();*/
        
	}

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (TextBox1.Text == "admin" && TextBox2.Text == "admin")
        {
            Response.Redirect("adminhome.aspx");
        }
        else
        {
            Literal1.Text = "<h2> username or password incorrect</h2>";
        }
    }
}