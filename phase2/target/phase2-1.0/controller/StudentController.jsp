<%@page import="com.Academy.backoffice.model.Student"%>
<%@page import="com.Academy.backoffice.model.Classe"%>
<%@page import="com.Academy.backoffice.utils.Constants"%>
<%@page import="java.util.List"%>
<%@page import="com.Academy.backoffice.model.Subject"%>
<%@page import="com.Academy.backoffice.utils.AcademyFactory"%>
<%@page import="com.Academy.backoffice.dao.AcademyDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String contextPath=request.getContextPath();
System.out.println("ClassController:contextPath: "+contextPath);
AcademyDao dao=AcademyFactory.getAcademyDao();
List<Student> students=null;
if(session.getAttribute(Constants.STUDENT_LIST)!=null){
	students=(List<Student>)session.getAttribute(Constants.STUDENT_LIST);
}

if(request.getParameter("action")==null){

}
String action=(String)request.getParameter("action");
System.out.println("Action -> "+action);

switch(action){
case "load":
	students=dao.getStudents();
	session.setAttribute(Constants.STUDENT_LIST, students);
	break;


}
String url=String.format("/pages/Students.jsp");
System.out.println("StudentController: url: "+url);
%>
<jsp:forward page="<%=url%>"></jsp:forward>
