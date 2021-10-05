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
List<Classe> classes=null;
if(session.getAttribute(Constants.CLASS_LIST)!=null){
	classes=(List<Classe>)session.getAttribute(Constants.CLASS_LIST);
}

if(request.getParameter("action")==null){

}
String action=(String)request.getParameter("action");
System.out.println("Action -> "+action);

switch(action){
case "load":
	classes=dao.getClasses();
	session.setAttribute(Constants.CLASS_LIST, classes);
	break;


}
String url=String.format("/pages/Classes.jsp");
System.out.println("ClassController: url: "+url);
%>
<jsp:forward page="<%=url%>"></jsp:forward>
