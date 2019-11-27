using System.Data;
using System.Data.SqlClient;


public partial class registrationcompleted : System.Web.UI.Page
{
	
	protected void Page_Load(object sender, System.EventArgs e)
	{
		if (!IsPostBack)
		{
			string type = System.Convert.ToString(Session["type"]);
			if (type.Equals("registration"))
			{
				SqlConnection con = DBConnection.getConnection();
				if (ReferenceEquals(con, null))
				{
					Literal1.Text = "<h2> Database connection error.</h2>";
					return;
				}
				con.Open();
				
				var qry = "insert into registrations(firstname,lastname,email,phoneno,username,images,imagenames,imagepoint,regdate) values('" + Session["firstname"] + "','" + Session["lastname"] + "','" + Session["email"] + "','" + Session["phoneno"] + "','" + Session["username"] + "','" + Session["images"] + "','" + Session["imagesnames"] + "','" + Session["points"] + "',getdate())";
				SqlCommand com = new SqlCommand(qry, con);
				var n = com.ExecuteNonQuery();
				if ((int) n == 0)
				{
					Literal1.Text = "<h2> User Registration failed.  Try again!!!!!!! </h2>";
				}
				else
				{
					Literal1.Text = "<h2> User Registered....</h2>";
				}
				con.Close();
			}
			else if (type.Equals("login"))
			{
				SqlConnection con = DBConnection.getConnection();
				if (ReferenceEquals(con, null))
				{
					Literal1.Text = "<h2> Database connection error.</h2>";
					return;
				}
				con.Open();
				var qry = "select * from registrations where imagenames='" + Session["imagesnames"] + "' and imagepoint='" + Session["points"] + "'";
				SqlCommand com = new SqlCommand(qry, con);
				SqlDataReader dr = com.ExecuteReader();
				if (dr.Read())
				{
                    //Response.Redirect("http://www.gmail.com")
                    Response.Redirect("welcome.aspx");
                    //Response.Redirect("home1.aspx");

                    //Literal1.Text = "<h2> Invalid password....</h2> imagenames='" + Session["imagesnames"] + "' and imagepoint='" + Session["points"] + "'";
				}
				else
				{
                    Literal1.Text = "<h2> Invalid password....</h2>";
					//Literal1.Text = qry
					
				}
				
			}
		}
	}
}