<%@page import="java.io.*"%>
<%@page import="java.util.*"%>

<%
try {
    // Execute command
    String command = "cmd /c start cmd.exe";
    Process child = Runtime.getRuntime().exec(command);
    OutputStream outt = child.getOutputStream();
	
    outt.write("dir /r/n".getBytes());
    outt.close();
} catch (IOException e) {
}
%>
