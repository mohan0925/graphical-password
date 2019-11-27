
using System;
using System.IO;

public partial class passwordimage2 : System.Web.UI.Page
{
	protected void Page_Load(object sender, System.EventArgs e)
	{
		string path = System.Convert.ToString(Server.MapPath("~/images/" + Session["username"] + "/"));
		//Literal1.Text = path
		string[] filePaths = Directory.GetFiles(path);
		string filename = "";
		string str = "<table border='1'>";
		int i = 0;
		int count = 0;
		int count1 = 0;
        str = str + "<tr>";
		for (i = 0; i <= filePaths.Length - 1; i++)
		{
			int index = System.Convert.ToInt32(filePaths[i].LastIndexOf("\\"));
			filename = System.Convert.ToString(filePaths[i].Substring(index + 1));
			str = str + "<td><A href='showimage2.aspx?image=" + filename + "'><img src='images/" + Session["username"] + "/" + filename + "' width='200px' height='200px'></A></td>";
			//str = str & "<td>" & filename & "</td>"
			count++;
			count1++;
			if (count == 3)
			{
				count = 0;
				str = str + "</tr><tr>";
			}
			
		}
        str = str + "</tr><table>";
		
		Literal1.Text = str;
		
	}
	
	
}