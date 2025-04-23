<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="ProjImg/img14.jpg">
<center>
<table >
<tr>
<td><a href="Admin.jsp">Home</a></td>
<td><a href="AddQuestion.jsp">Add Question</a></td>
<td><a href="DeleteQuestion.jsp">Delete Question</a></td>
<td><a href="AddSubject.jsp">Add Subject</a></td>
<td><a href="TestPolicy.jsp">Add Test</a></td>
<td><a href="AllResult.jsp">See Result</a></td>
<td><a href="UserInfo.jsp">User Info</a></td>
</tr>
</table>
</center>
<br><br><br>
<form action="SubAddDB.jsp">
<center>
<table border="1">
<tr><td>Enter Subject</td><td><input type="text" name="sub"></td></tr>
<tr><td colspan="2"><input type="submit" value="ADD"></td></tr>
</table>
</center>
</form>
<%
if(request.getAttribute("SMSG")!=null)
{
	out.print(request.getAttribute("SMSG"));
}
%>
</body>
</html>