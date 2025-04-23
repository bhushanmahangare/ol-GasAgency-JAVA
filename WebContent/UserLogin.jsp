<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function isNotUser(String msg)
{
   return alert(msg);	  
}
function validationFun()
{
	var isvalid = true;
	//alert("Enter Login Field");
	var loginId =  document.getElementById("login").value;
	var pass =  document.getElementById("pass").value;
	var lblloginId =  document.getElementById("lbllogin");
	var lblpass =  document.getElementById("lblpass");
	lblloginId.style.visibility = "hidden";	
	lblpass.style.visibility =  "hidden";	
	//alert(loginId.value);
	//alert(loginId.lenght);
	//alert(pass.lenght);
	
	if(loginId == null || loginId =="")
	{
		//alert("Enter Login Field");
		isvalid =  false;	
	  lblloginId.style.visibility = "visible";	  
	}
	if(pass == null || pass == "")
	{
		//alert("Enter Pass Field");
		isvalid =  false;
	  
	  lblpass.style.visibility =  "visible";	  
	}
	//alert(isvalid);
	return isvalid;
	
}
</script>
</head>
<body style="background-image: url('ProjImg/img14.jpg')">
<p align="left"><a href="Home.jsp"><b><h3>&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;</h3></b></a></p><p align="right"><a href="TermsCond.jsp"><b><h3>Terms&Condition</h3></b></a></p>
<center>
<font face="Limbus Mono L" color="#663399" size="25"><b><u>User Login</u></b></font><br><br>
<img src="ProjImg/ad.png" height="200" width="150">
<br><br>
<form method=post action="UserValid" onsubmit="return validationFun()">
<table height=210 width=350 bgcolor="#6699FF">
<tr>
<td>
<b>User_Name </b>
</td>
<td>
<input type=text name="login" size=10 id="login">
</td>
<td>
<label id="lbllogin" style="visibility:hidden; color: red;">Enter Login Field</label>
</td>
</tr>
<tr>
<td>
<b>Password</b>
</td>
<td>
<input type=password name="pass" size=10 id="pass">
</td>
<td>
<label id="lblpass" style="visibility: hidden;color: red;">Enter password Field</label>
</td>
</tr>
<tr>
<td colspan="3"><center><input type=submit name=submit value=SUBMIT>
<input type=reset name=RESET></center>
</td>
</tr>
</table>
</form>
<a href="UserRegisteration.jsp">CREATE NEW USER??</a>
</center>
<%
  if(request.getAttribute("alertMsg")!=null)
  {
	  out.print(request.getAttribute("alertMsg"));
  }  
%>
</body>
</html>