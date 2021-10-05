<%@page import="com.Academy.backoffice.model.Student"%>
<%@page import="com.Academy.backoffice.utils.Constants"%>


<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    List<Student> students=null;
    if(session.getAttribute(Constants.STUDENT_LIST)!=null){
    	students=(List<Student>)session.getAttribute(Constants.STUDENT_LIST);
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Classes</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body style="background-image: url('css/background.jpg');">
	<div id="page">
		<jsp:include page="Menu.jsp" />

<br/>
		<div id="wrapper">

			<div id="header">
				<h3>List of Students</h3>
			</div>
		</div>


		<div id="container">

			<div id="content">

				<table class="table table-hover">

					<tr>

						<th scope="col">Id</th>
						<th scope="col">Name</th>
						<th scope="col">Class</th>
<!-- 						<th>Teacher</th> -->
<!-- 						<th>Time</th> -->
<!-- 						<th>List of Students</th> -->

					</tr>
<tbody>
					<%
for(Student item :students){
%>
<tr>
<td> <%=item.getId() %></td>
<td> <%=item.getName() %> </td>
<td> <%=item.getClasse().getName() %> </td>


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






</body>
</html>