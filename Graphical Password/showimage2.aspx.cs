using System.Web.Services;
using System.IO;

public partial class showimage2 : System.Web.UI.Page
{
	protected void Page_Load(object sender, System.EventArgs e)
	{
		//Panel1.BackImageUrl = Request.QueryString("image")
		
		if (!IsPostBack)
		{
			ImageMap1.ImageUrl = "~/images/" + Session["username"] + "/" + Request.QueryString["image"];
			Session["selimagefile"] = Request.QueryString["image"];
		}
	}
	
	protected void TextBox1_TextChanged(object sender, System.EventArgs e)
	{
		
	}
	
	protected void Button1_Click(object sender, System.EventArgs e)
	{
		
		
	}

    protected void Button1_Click1(object sender, System.EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('select a point on image.');", true);
            return;
        }

        Session["points"] = Session["points"] + "," + TextBox1.Text;
        Session["imagesnames"] = Session["imagesnames"] + "," + Session["selimagefile"];
        string str = System.Convert.ToString(Session["n"]);
        int n = int.Parse(str);
        n--;
        Session["n"] = n;
        if (n == 0)
        {
          
           Response.Redirect("registrationcompleted.aspx");
        }
        else
        {
            Response.Redirect("passwordimage2.aspx");
        }
    }
}