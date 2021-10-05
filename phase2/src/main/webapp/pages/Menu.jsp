<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <h2><a class="navbar-brand" href="#">Academy Learning BackOffice</a></h2>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="<%=request.getContextPath()%>/pages/Menu.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link"  href="<%=request.getContextPath()%>/controller/MenuController.jsp?action=Classes">Classes</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath()%>/controller/MenuController.jsp?action=Subjects">Subjects</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath()%>/controller/MenuController.jsp?action=Students">Students</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath()%>/controller/MenuController.jsp?action=Teachers">Teachers</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="<%=request.getContextPath()%>/pages/login.jsp">Log out</a>
      </li>
    </ul>
  </div>
</nav>
 
