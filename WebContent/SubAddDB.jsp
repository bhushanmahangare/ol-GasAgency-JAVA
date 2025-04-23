<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="MyDbConnection.*,java.sql.*,MyClasses.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String SubName =request.getParameter("sub");

String sql="insert into Subject(Sub_Name) values("+SubName+")";
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
request.setAttribute("SMSG","Subject Successfully Added");
getServletContext().getRequestDispatcher("/AddSubject.jsp").forward(request, response);
%>

</body>
</html>