<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"> 
<%@ page import="java.io.*"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.io.*"%>
<%@page import="java.sql.*"%>
<title>
Profile Info.
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

#logout{
 position:absolute;
 right:40px;
 top:85px;
}
body{
background-color:#9abcde;
}
#profile
{
 position:absolute;
 top:115px;
 left:85px;
 width:auto;
 height:auto;
 text-align:center;
 padding : 10px;
 margin : 10px;
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
 //database activity
 String dclass="oracle.jdbc.driver.OracleDriver";
 String url="jdbc:oracle:thin:@localhost:1521:xe";
 String uname="system";
 String passwd="maa";
 Class.forName(dclass);
 Connection con=DriverManager.getConnection(url,uname,passwd);
 String query="select * from userdetail where uniqname="+"\'"+username+"\'";
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery(query);

output.println("<div id='profile'>");
output.println("<h3>"+(String)session.getAttribute("fullname") +"</h3>");
output.println("<hr>");
output.println("<table>");
if(rs.next()){
 		 output.println("<tr>");
		 output.println("<td>User Name</td>");
		 output.println("<td align='center'>"+rs.getString(1)+"</td>");
         output.println("</tr>");
		 output.println("<tr>");
		 output.println("<td>Email</td>");
		 output.println("<td>"+rs.getString(3)+"</td>");
         output.println("</tr>");
	  }
 if(folder.isDirectory())
  {
         String name[]=folder.list();
		 output.println("<td>Total Files</td>");
		 output.println("<td align='center'>"+name.length+"</td>");
         output.println("</tr>");
		 
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
</body>
</html>
