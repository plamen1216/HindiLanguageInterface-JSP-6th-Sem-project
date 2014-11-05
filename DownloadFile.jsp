
<%@page import="java.io.*"%>

<%   
  out.println("File Downloaded");  
  String filename = "home.jsp";   
  String filepath = "C:\\Users\\MAI\\Apache\\apache-tomcat-7.0.53\\webapps\\Hindi\\";   
  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
  
  FileInputStream fileInputStream=new FileInputStream(filepath + filename);  
            
  int i;   
  while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   
  }   
  fileInputStream.close();


%>
