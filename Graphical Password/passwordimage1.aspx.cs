using System;
using System.IO;
using System.Data;
public partial class passwordimage1 : System.Web.UI.Page
{
	
	protected void Page_Load(object sender, System.EventArgs e)
	{
		string path = System.Convert.ToString(Server.MapPath("~/images/Systemimages/"));
		
		string[] filePaths = Directory.GetFiles(path);
		string filename = "";
		string str = "<table border='1'>";
		int i = 0;
		int count = 0;
		str = str + "<tr>";
		for (i = 0; i <= filePaths.Length - 1; i++)
		{
			int index = System.Convert.ToInt32(filePaths[i].LastIndexOf("\\"));
			filename = System.Convert.ToString(filePaths[i].Substring(index + 1));
			str = str + "<td><A href='showimage1.aspx?type=system&image=" + filename + "'><img src='images/systemimages/" + filename + "' width='200px' height='200px'></A></td>";
			//str = str & "<td>" & filename & "</td>"
			count++;
			if (count == 3)
			{
				count = 0;
				str = str + "</tr><tr>";
			}
		}
		str = str + "</tr><table>";
        Literal1.Text = str;
	}
	
	protected void Button1_Click(object sender, System.EventArgs e)
	{
		
	}

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string photo1 = " ";
        
        
        Random r = new Random();
        int num = System.Convert.ToInt32(r.Next());

        if (FileUpload1.HasFile)
        {
            try
            {
                photo1 = "" + Session["username"] + System.Convert.ToString(num) + Path.GetFileName(System.Convert.ToString(FileUpload1.FileName));
                FileUpload1.SaveAs(Server.MapPath("~/images/" + Session["username"] + "/") + photo1);
                Server.Transfer("showimage1.aspx?type=user&image=" + photo1);
            }
            catch (Exception ex)
            {
                Literal1.Text = "Error :" + ex.Message;
            }
        }
    }
}