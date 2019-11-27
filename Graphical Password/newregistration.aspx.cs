using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text.RegularExpressions;

public partial class newregistration : System.Web.UI.Page
{
    private object userId;

    public  bool checkforEmail(String email)
    {
        bool isValid = false;
        Regex rEmail = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
        if (rEmail.IsMatch(email))
            isValid = true;
        return isValid;

    }
    protected void Button1_Click1(object sender, System.EventArgs e)
    {
        Session["n"] = DropDownList1.SelectedValue;
        Session["firstname"] = TextBox1.Text;
        Session["lastname"] = TextBox2.Text;
        Session["email"] = TextBox3.Text;
        Session["phoneno"] = TextBox4.Text;
        Session["username"] = TextBox5.Text;
        Session["images"] = DropDownList1.SelectedValue;
        Session["points"] = "";
        Session["imagesnames"] = "";
        Session["type"] = "registration";
        if (checkforEmail(TextBox3.Text.ToString()))
        {
           

            string directoryPath = System.Convert.ToString(Server.MapPath(string.Format("~/images/{0}/", TextBox5.Text.Trim())));
            if (!Directory.Exists(directoryPath))   
            {
                Directory.CreateDirectory(directoryPath);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('user already exists. Try another');", true);
                return;
            }

            Response.Redirect("passwordimage1.aspx");
        }
        else
        {
            Literal1.Text = "invalid email format";
        }
    }

    protected void Page_Load(object sender, System.EventArgs e)
    {

    }

    protected void Button2_Click(object sender, System.EventArgs e)
    {
       
    }
    private void SendActivationEmail(object userId)
    {
        //throw new NotImplementedException();
      
        /*string activationCode = Guid.NewGuid().ToString();
        using (SqlConnection con = DBConnection.getConnection())
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO useractivation VALUES(@rid, @activation)"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@rid", userId);
                    cmd.Parameters.AddWithValue("@activation", activationCode);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
        using (MailMessage mm = new MailMessage("sender@gmail.com", TextBox3.Text))
        {
            mm.Subject = "Account Activation";
            string body = "Hello " + TextBox1.Text.Trim() + ",";
            body += "<br /><br />Please click the following link to activate your account";
            body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("CS.aspx", "CS_Activation.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>";
            body += "<br /><br />Thanks";
            mm.Body = body;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("graphicpass01@gmail.com", "mohansairam");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
        }*/
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        //SendActivationEmail(userId);
    }
}