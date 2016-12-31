<%@page import="sun.management.Agent"%>
<%@page import="org.apache.tomcat.jni.User"%>
<%@page import="com.sun.xml.internal.ws.client.RequestContext"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Information</title>
</head>
<body>
<b>Hi There</b><br><br>

<b>Current Time is: </b><%=new Date()%><br><br>

<b>Request User.Agent:</b><%=request.getHeader("User-Agent") %><br><br>

<b>User context param value: </b><%=application.getInitParameter("User") %><br><br>

<b>User Session ID: </b> <%= session.getId()%> <br><br>
<%pageContext.setAttribute("Test", "Test Value"); %>
<b>Page Context attribute:</b>{Name="Test",Value="<%=pageContext.getAttribute("Test") %>"}<br><br>

<b>Generated Servlet Name:</b><%=page.getClass().getName() %><br>
</body>
</html>