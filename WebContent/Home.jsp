<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
body p {
	font-size: larger;
}
body p {
	font-weight: bold;
}
body p {
	font-family: "Times New Roman", Times, serif;
	font-size: 36px;
	color: #90F;
}
</style>
</head>

<body style="background-image: url('ProjImg/img14.jpg')">
<% if(session.getAttribute("UserNM")!=null)
   {
	session.setAttribute("UserNM", null);
   }
%>
<h3>
<p><img src="ProjImg/index3.jpeg" / height="120" width="165">ONLINE EXAMINATION CENTER</p>
<p>
  <marquee direction="left" bgcolor="#000000">
  <img src="ProjImg/online_exam_system_pune_latur_aurangabad.jpg" width="177" height="81" /><img src="ProjImg/stock-footage-multi-ethnic-male-and-female-classmates-study-online-exam-in-modern-technology-library.jpg" width="177" height="81" /><img src="ProjImg/students.jpg" width="177" height="81" /><img src="ProjImg/tumblr_memh8b1vDj1rz7i6ro1_400_large.jpg" width="177" height="81" /><img src="ProjImg/zrclip-001n1bbb3214.png" width="177" height="81" /><img src="ProjImg/IMG_20140121_103043.jpg"  width="177" height="81"/><img src="ProjImg/IMG_20140121_103048.jpg" width="177" height="81"  /><img src="ProjImg/IMG_20140121_103059.jpg" width="177" height="81" /><img src="ProjImg/IMG_20140121_103145.jpg" width="177" height="81" />

  </marquee>
</p>
<table width="976" border="1">
  <tr>
    <td width="140"><center><a href="Home.jsp">Home</a></center></td>
    <td width="140"><center><a href="AboutUs.jsp">About Us</a></center></td>
    <td width="140"><center><a href="AdminLogin.jsp">Admin Login</a></center></td>
    <td width="140"><center><a href="FAQ.jsp">FAQ's</a></center></td>
    <td width="140"><center><a href="UserLogin.jsp">User Login</a></center></td>
    <td width="186"><center><a href="TermsCond.jsp">Terms & Condition</a></center></td>
    <td width="190"><center><a href="Contact.jsp">Contact Us</a></center></td>
  </tr>
</table>
</body>
</html>