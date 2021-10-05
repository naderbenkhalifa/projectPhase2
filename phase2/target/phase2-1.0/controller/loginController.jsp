<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<%
session.setAttribute("authenticated","false"); 
final String errorMessage="Authenication failed : incorrect username or password";
final  String DEFAULT_LOGIN="admin";
final  String DEFAULT_PWD="admin";
String username=request.getParameter("username");
String password=request.getParameter("password");
if(DEFAULT_LOGIN.equals(username) && DEFAULT_PWD.equals(password) ){
	out.println("You r successfully logged in");  
	session.setAttribute("authenticated","true"); 
	session.setAttribute("login.error", null);

%>
<jsp:forward page="/pages/Menu.jsp"></jsp:forward>  
<%
}
else  
{  
	session.setAttribute("login.error", errorMessage);  
%>  
<jsp:forward page="/pages/login.jsp"></jsp:forward> 
<%  
}  
%>  