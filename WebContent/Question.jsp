<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="MyClasses.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% 
String time = request.getParameter("time");
System.out.println("Time"+time);
String mins = request.getParameter( "mins" );  
if( mins == null ) mins = time; 
   
String secs = request.getParameter( "secs" );  
if( secs == null ) secs = "1";  
%>  
<script>   
var mins = <%=mins%>; // write mins to javascript  
var secs = <%=secs%>; // write secs to javascript  
function timer()  
{  
// tic tac  
if( --secs == -1 )  
{  
secs = 59;  
--mins;  
}  
  
// leading zero? formatting  
if( secs < 10 ) secs = "0" + secs;               
if( mins < 10 ) mins = "0" + parseInt( mins, 10 );  
  
// display  
document.forma.mins.value = mins;   
document.forma.secs.value = secs;  
  
// continue?  
if( secs == 0 && mins == 0 ) // time over  
{ 
document.forma.ok.disabled = true;  
document.formb.results.style.display = "block";  
}  
else // call timer() recursively every 1000 ms == 1 sec  
{  
window.setTimeout( "timer()", 1000 );  
}  
}   
</script>
</head>
<body background="ProjImg/img114.jpg">
<form action="QuestionForm" name="forma" method="post">
Time remaining: <input type="text" name="mins" size="1" style="border:0px solid black;text-align:right">:<input type="text" name="secs" size="1" style="border:0px solid black">  
<hr>  
<table border="2">
<%
int i= 1;

for(Question quset:QuestionUtility.GetAllQuestion())	
{
 out.print("<tr>");	
 out.print("<td>Que"+i);
 out.print("</td>");
 out.print("<td>"+quset.getQuestion());
 out.print("</td>");
 out.print("</tr>");
 out.print("<tr>"); 
 out.print("<td>"+"Options:"+"</td>");
 out.print("<td>");
 System.out.println(quset.getQueId());
 out.print("<input type=radio name="+i+" value='"+quset.getOptions1()+"'/>"+quset.getOptions1());
 out.print("<input type=radio name="+i+" value='"+quset.getOptions2()+"'/>"+quset.getOptions2());
 out.print("<input type=radio name="+i+" value='"+quset.getOptions3()+"'/>"+quset.getOptions3());
 out.print("<input type=radio name="+i+" value='"+quset.getOptions4()+"'/>"+quset.getOptions4());
 out.print("</td>"); 
 out.print("<input type=hidden name=questid"+i+" value='"+quset.getQueId()+"'/>");
 out.print("</tr>"); 
 i++;
}

%>
<tr><td><input type="submit" name="Submit"></td></tr>
</table>
</form>
<script>  
timer(); // call timer() after page is loaded   
</script>
</body>
</html>