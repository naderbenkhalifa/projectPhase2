<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String contextPath=request.getContextPath();
System.out.println("MenuController:contextPath: "+contextPath);
String url="";
if(request.getParameter("action")==null){
	url=String.format("/Menu.jsp");
}
else{
String action=(String)request.getParameter("action");
System.out.println("Action -> "+action);
//url=String.format("%s/pages/%s.jsp",contextPath, action);
switch(action){
case "Subjects":
	url=String.format("/controller/%s.jsp?action=load", "SubjectController");
	
	break;
case "Classes":
	url=String.format("/controller/%s.jsp?action=load", "ClassController");
	
	break;
case "Students":
	url=String.format("/controller/%s.jsp?action=load", "StudentController");
	
	break;
case "Teachers":
	url=String.format("/controller/%s.jsp?action=load", "TeacherController");
	
	break;
	
}

}
System.out.println("MenuController: url: "+url);


%>
<jsp:forward page="<%=url %>"></jsp:forward>

