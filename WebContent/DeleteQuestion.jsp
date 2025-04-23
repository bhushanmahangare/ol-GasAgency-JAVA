<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="MyClasses.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DeleteQuestion</title>
</head>
<body style="background-image: url('ProjImg/img14.jpg')">
<table width="212" height="47" border="1">
<%
int i= 1;

for(Question quset:QuestionUtility.GetAllQuestion())	
{
 out.print("<tr>");	
 out.print("<td>Que"+i);
 out.print("</td>");
 out.print("<td width='200'>"+quset.getQuestion());
 out.print("</td>");
 out.print("<td><a href=DeleteQ.jsp?questno="+quset.getQueId()+">Delete</a></td>");
 i++;
}

if(request.getAttribute("QMSG")!=null)
{
	out.print(request.getAttribute("QMSG"));
}
%>
</table>
</body>
</html>