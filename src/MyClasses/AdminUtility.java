package MyClasses;

import java.sql.Connection;
import java.sql.ResultSet;

import MyDbConnection.DbConnection;

public class AdminUtility {
	public static void InsertUser(String sql) throws Exception
    {
    	Connection con = DbConnection.GetDbConnection(); 
    	DbConnection.Insert(sql,con);
    	con.close();
    }
	public static boolean IsValiduser(String sql) throws Exception
	{
		int usercount = 0;
		Connection con = DbConnection.GetDbConnection();
	 	System.out.println("before");
	 	ResultSet resultSet=null;
	 	resultSet = DbConnection.GetAllresult(sql, con);
	 	System.out.println("After");
	 	while(resultSet.next())
	 	{	 	
	 		usercount = resultSet.getInt("usercount");	 		
	 	}
	 	con.close();
	 	System.out.println("ConnectionClosed");
	 	System.out.println(usercount);
	 	
	 	if(usercount == 1)
	 			return(true);
	 	else
	 			return(false);
	 	
	
	}
	/*
	public static String GetName(String sql) throws Exception
	{
		String Name=null;
		Connection con = DbConnection.GetDbConnection();
		ResultSet rs=DbConnection.GetAllresult(sql, con);
		while (rs.next()) 
		{
		  Name=rs.getString("Login_Id");
		}
		return Name;
	 }*/

}
