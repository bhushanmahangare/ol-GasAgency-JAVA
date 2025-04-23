<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UserRegistration</title>
function validationFun()
{
	var isvalid = true;
	
	var user =  document.getElementById("id").value;
	var name= document.getElementById("fname").value;
	var dob =  document.getElementById("dob").value;
	var gender =  document.getElementById("g").value;
	var strm =  document.getElementById("stream").value;
	var cntno =  document.getElementById("place").value;
	var mailid =  document.getElementById("email").value;
	var npass =  document.getElementById("pwd").value;
	var cpass =  document.getElementById("cpwd").value;
	
	
	var lbluser =  document.getElementById("lbluser");
	var lbladd =  document.getElementById("lbladd");
	var lblphno =  document.getElementById("lblphno");
	var lblnat =  document.getElementById("lblnat");
	var lblplace =  document.getElementById("lblplace");
	var lblmailid =  document.getElementById("lblmailid");
	var lblnpass =  document.getElementById("lblnpass");
	var lblcpass =  document.getElementById("lblcpass");
	var lblmatch =   document.getElementById("lblmatch");
	
	
	lbluser.style.visibility = "hidden";	
	lbladd.style.visibility =  "hidden";	
	lblphno.style.visibility =  "hidden";
	lblnat.style.visibility =  "hidden";
	lblmailid.style.visibility =  "hidden";
	lblnpass.style.visibility =  "hidden";
	lblcpass.style.visibility =  "hidden";
	lblmatch.style.visibility =  "hidden";
	
	if(user == null || user =="")
	{
		//alert("Enter username Field");
			isvalid =  false;
	  lbluser.style.visibility = "visible";	 	 
	}
	
	if(add == null || add =="")
	{
		//alert("Enter address Field");
			isvalid =  false;
	  lbladd.style.visibility = "visible";	  
	}
	

	if(phno == null || phno =="0")
	{
		//alert("Enter Login Field");
			isvalid =  false;
	  lblphno.style.visibility = "visible";	  
	}
	
	
	if(nat == null || nat =="")
	{
		//alert("Enter nationality Field");
			isvalid =  false;
	  lblnat.style.visibility = "visible";	  
	}	
	
	if(place == null || place =="")
	{
		//alert("Enter birthplace Field");
			isvalid =  false;
	  lblplace.style.visibility = "visible";	  
	}
		

	if(mailid == null || mailid =="")
	{
		//alert("Enter email Field");
			isvalid =  false;
	  lblmailid.style.visibility = "visible";	  
	}
	
	
	if(npass == null || npass =="")
	{
		//alert("Enter new password Field");
			isvalid =  false;
	  lblnpass.style.visibility = "visible";	  
	}
	
	if(cpass == null || cpass =="")
	{
		//alert("Enter confirm password Field");		
			isvalid =  false;
	  lblcpass.style.visibility = "visible";	  
	}
	if(npass!=cpass)
	{
		isvalid=false;
		lblmatch.style.visibility =  "visible";
	}

	//alert(isvalid);
return isvalid;	
}

</script>
</head>
<body style="background-image: url('ProjImg/img14.jpg')">
<form method=post action="UserServlet">
<center>
<table border=3 width=500 height=700>
<tr><td colspan=2><center><b>REGISTRATION FORM</b></center></td></tr>
<tr>
<td><b>Login_Id</b></td><td>&nbsp;&nbsp;&nbsp;<input type=text size=20 name="id" /></td>
</tr>
<tr>
<td><b>Password</b></td><td>&nbsp;&nbsp;&nbsp;<input type=password name="pwd"size=20 /></td>
</tr>
<tr>
<td><b>Confirm Password</b></td><td>&nbsp;&nbsp;&nbsp;<input type=password name="cpwd"size=20 /></td>
</tr>
<tr>
<td><b>Full_Name</b></td><td>&nbsp;&nbsp;&nbsp;<input type=text name="fname" size=50 /></td>
</tr>
<tr>
<td><b>Date_Of_Birth</b></td><td>&nbsp;&nbsp;&nbsp;<input type=text size=20 name="dob" /><label id="lbl" style="color: red;">(YYYY/MM/DD)</label></td>
</tr>
<tr>
<td><b>Gender</b></td><td>&nbsp;&nbsp;<b>Male:</b><input type="radio" name="g" Value="m">&nbsp;&nbsp;<b>Female:</b><input type="radio" name="g" Value="f"></td>
</tr>
<tr>
<td><b>Stream</b></td><td>&nbsp;&nbsp;&nbsp;<input type=text name="stream" size=20 /></td>
</tr>
<tr>
<td><b>Email_Id</b></td><td>&nbsp;&nbsp;&nbsp;<input type=text name="email" size=50 /></td>
</tr>
<tr>
<td><b>Contact_No</b></td><td>&nbsp;&nbsp;&nbsp;<input type=text name="cntno" size=10 /></td>
</tr>
<tr><td colspan=3 align="center"><input type=submit value=SUBMIT name=submit />&nbsp;&nbsp;&nbsp;<input type=reset value=RESET name=reset /></td></tr>
</table>
</center>
</form>
 
</body>
</html>