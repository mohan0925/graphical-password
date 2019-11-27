using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, System.EventArgs e)
    {
        
        
    }

    protected void Button1_Click1(object sender, System.EventArgs e)
    {
        SqlConnection con = DBConnection.getConnection();
        if ((con == null))
        {
            Literal1.Text = "<h2> Database connection error.</h2>";
            return;
        }

        con.Open();
        string qry = ("select username,images from registrations where username=\'" + (TextBox1.Text + "\'"));
        SqlCommand com = new SqlCommand(qry, con);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            Session["points"] = "";
            Session["imagesnames"] = "";
            Session["username"] = TextBox1.Text;
            Session["n"] = dr["images"];
            Session["type"] = "login";
            Server.Transfer("passwordimage2.aspx");
        }
        else
        {
            Literal1.Text = "<h1>user not found. Try again!!!!!!!!!!</h1>";
        }

        con.Close();
    }

    protected void TextBox1_TextChanged(object sender, System.EventArgs e)
    {

    }
}