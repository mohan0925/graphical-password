using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addwebsite : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.validatorUrl.IsValid)
        { 
        SqlConnection con = DBConnection.getConnection();
        SqlCommand cmd = new SqlCommand("insert into website1 (website) values (@website)", con);
        cmd.Parameters.AddWithValue("website", TextBox1.Text);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();

            if (i != 0)
            {
                Literal1.Text = "Your Data have been saved to Database";
            }

            // Literal1.ForeColor = System.Drawing.Color.ForestGreen;
           // else
           // {
           //     Literal1.Text = "invalid url";
           // }
        }

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
    }

}