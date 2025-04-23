<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="MyClasses.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Question</title>
</head>
<body style="background-image: url('ProjImg/img14.jpg')">
<center>
<form action="AddQuestion" method="post">
<table>
<tr>
 <td width="174"><font class="font1">Select Subject</font></td><td width="137"><center><select name="Sub">
<% 
System.out.println("UserName"+session.getAttribute("UserNM"));

int i= 1;
for(Subject subset:SubjectUtility.GetAllSubject())
{
 out.print("<option>"+subset.getSname());
 out.print("</option>");
}

%>
 </select></center>
 </td>
</tr>

<tr>
<td>Question</td><td><textarea rows="5" cols="35" name="que"></textarea></td></tr>
<tr><td>Option1:-</td><td><input type="text" name="op1" /></td></tr>
<tr><td>Option2:-</td><td><input type="text" name="op2" /></td></tr>
<tr><td>Option3:</td><td><input type="text" name="op3" /></td></tr>
<tr><td>Option4:-</td><td><input type="text" name="op4" /></td></tr>
<tr><td>Correct Answer:-</td><td><input type="text" name="correctAns" /></td></tr>
<tr><td>Question Level</td>
<td>
<select name="level">
<option value="1" >Beginner</option>
<option value="2">Intermediate</option>
<option value="3">Expert</option>
</select></td>
</tr>
<tr>
<td><input type="Submit" value="submit" name="submit" /></td>
</tr>
</table>
</form>
</center>
</body>
</html>