<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test Policy</title>
</head>
<body style="background-image: url('ProjImg/img14.jpg')">
<p align="center"><a href="AdminHome.jsp"><font class="font1">Home</font></a>
<a href="AddQuestion.jsp"><font class="font1">Home</font></a>
</p>
<form action="PolicyDB.jsp">
<table width="553" height="354" border="1" align="center" bordercolordark="#3300CC">
<tr>
   <td colspan="2" class="font"><center>
      Test Policy
   </center></td>
</tr>
<tr>
    <td width="284" class="font1">Test Level </td><td width="253"><center><select name="TLevel">
                                         <option>Beginners</option>
                                         <option>Intermediate</option>
                                         <option>Expert</option>
        </select>                                 </select>
    </td>
</tr>

<tr>
  <td class="font1">No. of Question</td>
  <td><center><input type="text" name="NoQ"/></center></td>
</tr>
<tr>
  <td class="font1">Marks Per Question</td><td><center><input type="text" name="MPQ" /></center></td>
</tr>
<tr>
  <td class="font1">Minimum Question To Be Attempted</td><td><center><input type="text" name="MinQAtt" /></center></td>
</tr>
<tr>
 <td class="font1">Test Time</td><td><center><input type="text" name="TestTime" /></center></td>
</tr>
<tr>
  <td class="font1">Passing Marks</td><td><center><input type="text" name="PassMarks" /></center></td>
</tr>
<tr>
  <td class="font1">Negative Marks</td><td><center><input type="text" name="NegMarks" /></center></td>
</tr>
<tr><td height="57" colspan="2" bordercolorlight="#00FFCC"><center><input name="SUBMIT" type="submit" class="font1" id="SUBMIT"  />&nbsp;&nbsp;&nbsp;<input name="Reset" type="reset" class="font1" /></center></td></tr> 
</table>  
<%
   
   if(request.getAttribute("QMSG")!=null)
   {
	   out.print(request.getAttribute("QMSG"));
   }
%>
</body>
</html>