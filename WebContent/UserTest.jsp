<%@page import="java.net.URL"%>
<%@page import="MyDbConnection.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="ProjImg/img14.jpg">
<%
String Lvl =request.getParameter("Level");
int  lvlid=0;
String sql = "Select Level_Id From Test_Level where Level_Name = '"+Lvl+"'";
System.out.println(sql);
Connection con =  DbConnection.GetDbConnection();
ResultSet rst = DbConnection.GetAllresult(sql, con);
while( rst.next())
{
	lvlid = rst.getInt("Level_Id"); 	
}
String Sub =request.getParameter("Sub");

int subid = 0;
sql = "Select Sub_No From Subject where Sub_Name = '"+Sub+"'"; 
System.out.println(sql);
 rst = DbConnection.GetAllresult(sql, con);
while( rst.next())
{
	subid = rst.getInt("Sub_No"); 	
}


int No_Of_Que =0 ;
int Marks_Per_Question = 0; 
int Min_Que_Attempted = 0; 
int Time = 0;
int Passing_marks= 0; 
int Negative_Marks  = 0;

sql = "select * from Test_Level_Policy where Level_Id ="+lvlid;
rst = DbConnection.GetAllresult(sql, con);
while( rst.next())
{
 No_Of_Que = rst.getInt("No_Of_Que"); 
 Marks_Per_Question = rst.getInt("Marks_Per_Question");  
 Min_Que_Attempted = rst.getInt("Min_Que_Attempted"); 
 Time = rst.getInt("Time"); 
 Passing_marks= rst.getInt("Passing_marks"); 
 Negative_Marks  = rst.getInt("Negative_Marks"); 
}

con.close();
out.print("Rules Of Test<br>");
out.print("<table border=1>");
out.print("<tr>");
out.print("<td>Questions For Test</td><td>"+No_Of_Que+"</td></tr>");
out.print("<tr>");
out.print("<td>Marks For each Question</td><td>"+Marks_Per_Question+"</td></tr>");
out.print("<tr>");
out.print("<td>Minimum No. of Questions to be Attempted</td><td>"+Min_Que_Attempted+"</td></tr>");
out.print("<tr>");
out.print("<td>Time For Test</td><td>"+Time+"</td></tr>");
out.print("<tr>");
out.print("<td>Passing Marks</td><td>"+Passing_marks+"</td></tr>");
out.print("<tr>");
out.print("<td>Negative Mark per Wrong Answer</td><td>"+Negative_Marks+"</td></tr>");

String url = "Question.jsp?lvlid="+lvlid+"&Sub_No="+subid+"&time="+Time;
out.print("<tr><td><a href='"+url+"'>Next>></a></td></tr></table>");
%>

</body>
</html>