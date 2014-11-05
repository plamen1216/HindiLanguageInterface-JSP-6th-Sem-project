<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"> 
<%@ page import="java.io.*"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.io.*"%>

<title>
Download file
</title>
<style>
#titl
{
 position:absolute;
 top:0px;
 left:0px;
 right:0px;
 width:auto;
 height:auto;
 background-color:#ffffff;
 text-align:center;
 padding : 5px;
}
#filelist
{
 position:absolute;
 top:100px;
 left:10px;
 width:auto;
 height:auto;
 text-align:center;
 padding : 5px;
}
#logout{
 position:absolute;
 right:25px;
 top:85px;
}
body{
background-color:#9abcde;
}
</style>
</head>
<body>
<div id="titl">
 <h2>हिन्दी  भाषा  !</h2>
</div>
<div id="logout">
  <table  border="0">
  <tr>
     <td ><a href="home.jsp">Home</a></td>
     <td align="center"><a href="logout.jsp">LogOut</a></td>
  </tr>
    <tr>
    <td colspan="2" align="center">Hello <b> <%=(String)session.getAttribute("fullname") %> </b></td>
  </tr>
  </table>
</div>
<%
String username=(String)session.getAttribute("username");
try{
if(username!=null)
{ 
String dirname="C:\\Users\\MAI\\Apache\\apache-tomcat-7.0.53\\webapps\\Hindi\\"+username+"\\exe";
File folder=new File(dirname);
PrintWriter output=response.getWriter();
output.println("<div id='filelist'>");
output.println("<table>");
 if(folder.isDirectory())
  {
    String name[]=folder.list();
	for(int i=0;i<name.length;i++)
	 {
	  File f=new File(dirname+"\\"+name[i]);
	  if(!(f.isDirectory()))
	    {
		 output.println("<tr>");
		 output.println("<td>"+name[i]+"</td>");
		 output.println("<td><a href=\"dprocess.jsp?filename="+name[i]+"\""+">Download File</a></td>");
         output.println("</tr>");		 
		}
	 }
   }
  output.println("</table>");
 output.println("</div>");
  }
else
{
  response.sendRedirect("login.html");
}
}
catch(Exception e){}
%>
</div>
</body>
</html>
