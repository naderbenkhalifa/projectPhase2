<%@page import="com.Academy.backoffice.utils.Constants"%>

<%@page import="com.Academy.backoffice.model.Subject"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	List<Subject> subjects = null;
	if (session.getAttribute(Constants.SUBJECT_LIST) != null) {
		subjects = (List<Subject>) session.getAttribute(Constants.SUBJECT_LIST);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subjects</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<div id="page">
		<jsp:include page="Menu.jsp" />
		<div id="wrapper">

			<div id="header">
				<h3>List of subjects</h3>
			</div>
		</div>
		<div class="row card text-center">
			<h3>Add new Subject</h3>
			<form
				action="<%=request.getContextPath()%>/controller/SubjectController.jsp?action=add"
				method="POST">
				<div class="form-group">
					<label for="name">Name of Subject</label> 
					<input type="text"	class="form-control" id="name" placeholder="Enter Name of subject">

				</div>

				<button class="btn btn-primary" type="submit" value="Add">Add</button>
			</form>
			
					

		</div>
		<div id="container">

			<div id="content">
				<table class="table table-hover">
					<thead>
						<tr>
							<td scope="col">ID</td>
							<td scope="col">Name</td>
							<td scope="col">Update</td>
							<td scope="col">Delete</td>
						</tr>
					</thead>
					<tbody>
						<%
							for (Subject item : subjects) {
						%>
						<tr>
							<td><%=item.getId()%></td>
							<td><%=item.getName()%></td>
							<td><a
								href="<%=request.getContextPath()%>/pages/SubjectForm.jsp?id=<%=item.getId()%>">Update</a>
							</td>
							<td><a
								href="<%=request.getContextPath()%>/controller/SubjectController.jsp?action=delete&id=<%=item.getId()%>">Delete</a>
							</td>
						</tr>
						<%
							}
						%>
					</tbody>

				</table>
			</div>


		</div>


	</div>
</body>
</html>