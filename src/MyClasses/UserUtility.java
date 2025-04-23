package MyClasses;

import java.sql.Connection;

import MyDbConnection.DbConnection;

public class UserUtility {
	 public static void InsertUser(String sql) throws Exception
	    {
	    	Connection con = DbConnection.GetDbConnection(); 
	    	DbConnection.Insert(sql,con);
	    	con.close();
	    }

}
