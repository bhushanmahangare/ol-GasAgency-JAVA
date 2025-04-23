package MyDbConnection;

import java.sql.*;

public final class DbConnection {
	
	public static void Insert(String sql,Connection con) throws Exception
	{	
        System.out.println("OUTPUUT     ********111111111");
        Statement st =con.createStatement();
        System.out.print(sql);
        st.executeUpdate(sql);              
	}

    public static Connection GetDbConnection()throws Exception    
    {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        System.out.println("OUTPUUT     ********driver registered");
        Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Exam","root","");
        System.out.println("OUTPUUT     ********connection established");
        return connection;
    }

    public static ResultSet GetAllresult(String sql,Connection con) throws Exception
    {
    	  ResultSet resultSet=null;
        System.out.println("OUTPUUT     ********111111111");
        Statement st =con.createStatement();
        resultSet = st.executeQuery(sql);
        System.out.println(sql);
        //st.executeUpdate(sql);      
        return resultSet;
    }
    
    public static void UpdateDelete(String sql,Connection con) throws Exception
	{	
        System.out.println("OUTPUUT     ********111111111");
        Statement st =con.createStatement();
        System.out.print(sql);
        st.executeUpdate(sql);              
	}
}
