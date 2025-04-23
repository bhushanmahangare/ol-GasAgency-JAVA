<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="MyClasses.*,MyDbConnection.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String Lname =request.getParameter("TLevel");
int NoQ =Integer.parseInt(request.getParameter("NoQ"));
int MPQ =Integer.parseInt(request.getParameter("MPQ"));
int MinQat =Integer.parseInt(request.getParameter("MinQAtt"));
int TTime =Integer.parseInt(request.getParameter("TestTime"));
int Pasmks =Integer.parseInt(request.getParameter("PassMarks"));
int NegMks =Integer.parseInt(request.getParameter("NegMarks"));
int Lid = SublvlEnum.valueOf(Lname).getValue();
String sql="insert into Test_Level_Policy(Level_Id,No_Of_Que,Marks_Per_Question,Min_Que_Attempted,Time,Passing_marks,Negative_Marks) values("+Lid+","+NoQ+","+MPQ+","+MinQat+","+TTime+","+Pasmks+","+NegMks+")" ;
Connection con=DbConnection.GetDbConnection();
try{
	System.out.print(sql);
    DbConnection.Insert(sql, con);

}
catch(Exception e)
{ 
	 
}
finally{
con.close();
}
request.setAttribute("QMSG","Policy Successfully Added.");
getServletContext().getRequestDispatcher("/TestPolicy.jsp").forward(request, response);
%>
</body>
</html>