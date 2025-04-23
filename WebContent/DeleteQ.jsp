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
int qid =Integer.parseInt(request.getParameter("questno"));

String sql="delete from Question where Q_No="+qid;
Connection con=DbConnection.GetDbConnection();
try{
	System.out.print(sql);
    DbConnection.UpdateDelete(sql, con);

}
catch(Exception e)
{ 
	 
}
finally{
con.close();
}
request.setAttribute("QMSG","Question Successfully Deleted");
getServletContext().getRequestDispatcher("/DeleteQuestion.jsp").forward(request, response);
%>
</body>
</html>