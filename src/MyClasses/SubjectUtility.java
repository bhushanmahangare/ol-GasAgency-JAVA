package MyClasses;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import MyDbConnection.DbConnection;

public class SubjectUtility {
	public static ArrayList<Subject> GetAllSubject() throws Exception
    {	 
	    ArrayList<Subject> subList = new ArrayList<Subject>();
	    String sql = "select * from Subject";	
	    System.out.println(sql);
    	Connection con = DbConnection.GetDbConnection();       
    	ResultSet rst =  DbConnection.GetAllresult(sql,con);    	    	   
    	
	  while( rst.next())
	  {
		  Subject subset =  new Subject();
		  subset.setSno(rst.getInt("Sub_No"));
		  subset.setSname(rst.getString("Sub_Name"));
		            
          System.out.println(rst.getInt("Sub_No"));
          System.out.println(rst.getString("Sub_Name"));
          
          
          subList.add(subset);
          //System.out.println(i);           		  
	  }	
	  con.close();
	  System.out.println("GetAllSubject");
	  return subList;	 
    }

}
