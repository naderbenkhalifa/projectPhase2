<%@page import="com.Academy.backoffice.model.Classe"%>
<%@page import="com.Academy.backoffice.utils.AcademyFactory"%>
<%@page import="com.Academy.backoffice.dao.AcademyDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    Classe selectedItem=null;
    AcademyDao dao=AcademyFactory.getAcademyDao();
    if(request.getParameter("id")!=null){
    	String idStr=request.getParameter("id");
		//System.out.println("SubjectController: delete: id="+idStr);
		Integer id=Integer.parseInt(idStr.trim());
    	selectedItem=dao.getClasse(id);
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Class Form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<form action="<%=request.getContextPath()%>/controller/ClassController.jsp?action=update&id=<%=selectedItem.getId()%>" method="post">
	<div class="row">
	<div class="col-md-3">
	<h2> ID </h2>
	</div>
	<div class="col-md-9">
	 <input disabled="disabled" name="name" value="<%=selectedItem.getId()%>"/>
	 </div>
	</div>
	<div class="row">
	<div class="col-md-3">
	<h2> Name </h2>
	</div>
	<div class="col-md-9">
	 <input name="name" value="<%=selectedItem.getName()%>"/>
	 </div>
	</div>
	
<div class="row">
<button type="submit" class="btn btn-success">Valide</button>
</div>

</form>

</body>
</html>