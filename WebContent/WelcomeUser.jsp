<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="MyClasses.*" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="ProjImg.img14.jpg">
<marquee align="left" bgcolor="#000000"><font color="#CC0000" size="36px">Welcome <%out.print(session.getAttribute("UserNM")); %></font></marquee><br /><br  /><br />
<center>
<% session.getAttribute("UserNM");%>
<table width="327" height="114" border="1">
<form action="UserTest.jsp" method="get">
<tr>
 <td width="174"><font class="font1">Select Subject</font></td><td width="137"><center><select name="Sub">
<% 
out.print("UserName"+session.getAttribute("UserNM"));

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
 <td><font class="font1">Select Test Level</font></td><td><center><select name="Level"><option>Beginners</option>
                                                                                       <option>Intermediate</option>
                                                                                       <option>Expert</option></select></center></td>
</tr>
<tr><td colspan="2"><p align="right"><input name="NEXT" type="Submit" id="NEXT" value="NEXT >>" />
  &nbsp;&nbsp;</p></td></tr>

</form>
</table>
</center>
</body>
</html>