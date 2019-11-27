using System.Web.Services;
using System.IO;
using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class showimage1 : System.Web.UI.Page
{

    protected void Page_Load(object sender, System.EventArgs e)
    {
        // Panel1.BackImageUrl = Request.QueryString("image")
        if (!IsPostBack)
        {
            string type = Request.QueryString["type"];
            if (type.Equals("system"))
            {
                ImageMap1.ImageUrl = ("~/images/systemimages/" + Request.QueryString["image"]);
                Random r = new Random();
                int num = r.Next();
                string photo1 = "";
                try
                {
                    string path = Server.MapPath("~");
                    // photo1 = path & "/images/" & Session("username") & "/" & Request.QueryString("image")
                    // FileUpload1.SaveAs(Server.MapPath("~/images/" & Session("username") & "/") + photo1)
                    string newfile = (path + ("/images/"+ (Session["username"] + ("/"+ (num + Request.QueryString["image"])))));

                    File.Copy((path + ("/images/systemimages/" + Request.QueryString["image"])), newfile);

                    Session["selimagefile"] = (num + Request.QueryString["image"]);
                }
                catch (Exception ex)
                {
                    Literal1.Text = ("Error1111 :" + ex.Message);
                }

            }
            else if (type.Equals("user"))
            {
                ImageMap1.ImageUrl = ("~/images/"
                + (Session["username"] + ("/" + Request.QueryString["image"])));
                Session["selimagefile"] = Request.QueryString["image"];
            }

        }

    }

    protected void TextBox1_TextChanged(object sender, System.EventArgs e)
    {
    }

    protected void Button1_Click(object sender, System.EventArgs e)
    {
       
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if ((TextBox1.Text == ""))
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(\'select a point on image.\');", true);
            return;
        }

        Session["points"] = (Session["points"] + ("," + TextBox1.Text));
        Session["imagesnames"] = (Session["imagesnames"] + ("," + Session["selimagefile"]));
        string str = Session["n"].ToString();
        int n = int.Parse(str);
        n = (n - 1);
        Session["n"] = n;
        if ((n == 0))
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registered');window.location.href = 'registrationcompleted.aspx'", true);
            //Response.Redirect("registrationcompleted.aspx");
            
        }
        else
        {
            Response.Redirect("passwordimage1.aspx");
        }

    }

    
}