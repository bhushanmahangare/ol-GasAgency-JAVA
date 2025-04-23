<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Result</title>
</head>
<marquee bgcolor="green" direction="left"><font size="26" color="#cc6633"></font>Hello!! Your Result is Here!!!</marquee>
<body background="ProjImg/img14.jpg">
<p align="right"><a href="Home.html">Log Out</a></p>
<center>
<table border="1">
<tr><td>Total Question Attempted</td><td><label id="lblTQA" style="length: 50px"><%=(Integer)request.getAttribute("lblTQA") %> </label></td></tr>
<tr><td>Total Correct Answer</td><td><label id="lblTCA" style="length: 50px"><%=(Integer)request.getAttribute("lblTCA") %></label></td></tr>
<tr><td>Total Wrong Answer</td><td><label id="lblTWA" style="length: 50px"><%=(Integer)request.getAttribute("lblTWA") %></label></td></tr>
<tr><td>Total Time</td><td><label id="lblTT" style="length: 50px"><%=(String)request.getAttribute("lblTT") %></label></td></tr>
<tr><td>Result</td><td><label id="lblRES" style="length: 50px"><%=(String)request.getAttribute("lblRES") %></label></td></tr>
<tr><td><p align="center"><a href="feedback.jsp">Feedback</a></p></td></tr>
</table>
</center>
</body>
</html>