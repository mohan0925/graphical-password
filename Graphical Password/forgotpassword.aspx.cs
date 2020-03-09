using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System;

public partial class forgotpassword : System.Web.UI.Page
{
	MailMessage mail;
	protected void Button1_Click(object sender, System.EventArgs e)
	{		
		
	}

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = DBConnection.getConnection();
        if (ReferenceEquals(con, null))
        {
            Literal1.Text = "<h2> Database connection error.</h2>";
            return;
        }
        con.Open();

        var qry = "select email,imagenames,imagepoint from registrations where email='" + TextBox1.Text + "'";
        SqlCommand com = new SqlCommand(qry, con);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            string result = "Message Sent Successfully..!!";
            try
            {
                string senderID = "graphicpass01@gmail.com"; // use sender’s email id here..
                string senderPassword = "dfvdvdfdvddfd"; //sender password here…
                SmtpClient smtp = new SmtpClient();

                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new System.Net.NetworkCredential(senderID, senderPassword);
                smtp.Timeout = 30000;

                var message = new MailMessage(senderID, dr["email"].ToString(), "Password for site", "<h2>username=" + TextBox1.Text.ToString() + "  <br>Images=" + dr["imagenames"] + "<br> imagepoints=" + System.Convert.ToString(dr["imagepoint"]) + "<br><br><br>Thanks for registration!");
                message.IsBodyHtml = true;
                smtp.Send(message);

            }
            catch (Exception ex)
            {
                Literal1.Text = "Error11 :" + ex.Message + " email =" + System.Convert.ToString(dr["email"]);
                return;
            }
            Literal1.Text = result;

        }
        else
        {
            Literal1.Text = "<h1>user not found. Try again!!!!!!!!!!</h1>";
        }
        con.Close();


    }
}
