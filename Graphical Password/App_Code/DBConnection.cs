using Microsoft.VisualBasic;
using System;
using System.Data;
using System.Data.SqlClient;



public class DBConnection
{
	public static SqlConnection getConnection()
	{
		SqlConnection con = null;
		try
		{
			con = new SqlConnection("data source=(local);initial catalog=graphicalpasswords;integrated security=true");
		}
		catch (Exception)
		{
			con = null;
		}
		return con;
	}

}