<%@page import="com.Academy.backoffice.model.Teacher"%>
<%@page import="com.Academy.backoffice.utils.Constants"%>
<%@page import="java.util.List"%>
<%@page import="com.Academy.backoffice.model.Subject"%>
<%@page import="com.Academy.backoffice.utils.AcademyFactory"%>
<%@page import="com.Academy.backoffice.dao.AcademyDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String contextPath=request.getContextPath();
System.out.println("TeacherController:contextPath: "+contextPath);
AcademyDao dao=AcademyFactory.getAcademyDao();
List<Teacher> teachers=null;
if(session.getAttribute(Constants.TEACHERS_LIST)!=null){
	teachers=(List<Teacher>)session.getAttribute(Constants.TEACHERS_LIST);
}

if(request.getParameter("action")==null){

}
String action=(String)request.getParameter("action");
System.out.println("Action -> "+action);

switch(action){
case "load":
	teachers=dao.getTeachers();
	session.setAttribute(Constants.TEACHERS_LIST, teachers);
	break;


}
String url=String.format("/pages/Teachers.jsp");
System.out.println("TeacherController: url: "+url);
%>
<jsp:forward page="<%=url%>"></jsp:forward>
