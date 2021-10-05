<%@page import="java.util.Optional"%>
<%@page import="com.Academy.backoffice.utils.Constants"%>
<%@page import="java.util.List"%>
<%@page import="com.Academy.backoffice.model.Subject"%>
<%@page import="com.Academy.backoffice.utils.AcademyFactory"%>
<%@page import="com.Academy.backoffice.dao.AcademyDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%!
    Subject getSubjectOfList(List<Subject> SubjectList,Integer id){
    	Subject result=null;
    	Optional<Subject> foudItem=SubjectList.stream().filter(c -> c.getId()==id).findFirst();
    	if(foudItem.isPresent()) result=foudItem.get();	
    	return result;
     }
    	 %>
<%
String contextPath=request.getContextPath();
System.out.println("SubjectController:contextPath: "+contextPath);
AcademyDao dao=AcademyFactory.getAcademyDao();
List<Subject> subjects=null;
if(session.getAttribute(Constants.SUBJECT_LIST)!=null){
	subjects=(List<Subject>)session.getAttribute(Constants.SUBJECT_LIST);
}

if(request.getParameter("action")==null){

}
String action=(String)request.getParameter("action");
System.out.println("Action -> "+action);
switch(action){
case "load":
	subjects=dao.getSubjects();
	session.setAttribute(Constants.SUBJECT_LIST, subjects);
	break;
case "add":
	
	Subject newItem=new Subject();
	newItem.setName(request.getParameter("name"));
	dao.addSubject(newItem);
	subjects.add(newItem);
	
	break;
case "delete":
	if(request.getParameter("id")!=null){
		String idStr=request.getParameter("id");
		System.out.println("SubjectController: delete: id="+idStr);
		Integer id=Integer.parseInt(idStr.trim());
		System.out.println("SubjectController: delete: id="+id);
		dao.deleteSubject(id);
		
		//Subject subject=new Subject();
		//subject.setId(id);
		Subject item=getSubjectOfList(subjects, id);
		subjects.remove(item);
	}
	
	break;
case "update":
	
	if(request.getParameter("id")!=null){
		String idStr=request.getParameter("id");
		System.out.println("SubjectController: update: id="+idStr);
		Integer id=Integer.parseInt(idStr.trim());
		System.out.println("SubjectController: update: id="+id);
		
		//Subject subject=new Subject();
		//subject.setId(id);
		Subject item=getSubjectOfList(subjects, id);
		item.setName(request.getParameter("name"));
		dao.updateSubject(item);
	//subjects.remove(subject);
		//subjects.add(subject);
	}
	break;

}
String url=String.format("/pages/Subjects.jsp");
System.out.println("SubjectController: url: "+url);
%>
<jsp:forward page="<%=url%>"></jsp:forward>
