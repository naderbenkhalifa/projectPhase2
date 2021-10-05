<%@page import="com.Academy.backoffice.model.Subject"%>
<%@page import="com.Academy.backoffice.model.Classe"%>
<%@page import="com.Academy.backoffice.utils.Constants"%>


<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    List<Subject> subjects=null;
    if(session.getAttribute(Constants.SUBJECT_LIST)!=null){
    	subjects=(List<Subject>)session.getAttribute(Constants.SUBJECT_LIST);
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subjects</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body style="background-image: url('css/background.jpg');">
	<div id="page">
		<jsp:include page="Menu.jsp" />

<br/>
		<div id="wrapper">

			<div id="header">
				
			</div>
		</div>
<br/>

		<div id="container">
           <form class="form-inline" action="<%=request.getContextPath()%>/controller/SubjectController.jsp?action=add"
				method="POST">
		   <div class="row">
         
  
	
	 <div class="col-md-8 text-center">
     <input type="text" class="form-control" name="name" placeholder="name">
 </div>
 <br/>
 
  <div class="col-md-4">
 <button class="btn btn-primary" type="submit" value="Add">Add</button>
  </div>
   </div>
   
</form>
<br/>
<h2>List of Subjects</h2>
<br/>
			<div id="content">

				<table class="table table-hover">
               
					<tr>

						<th scope="col">Id</th>
						<th scope="col">Name</th>
						<th>Update</th>
						<th>Delete</th>
						
<!-- 						<th>Teacher</th> -->
<!-- 						<th>Time</th> -->
<!-- 						<th>List of Students</th> -->

					</tr>
<tbody>
					<%
for(Subject item :subjects){
%>
<tr>
<td> <%=item.getId() %></td>
<td> <%=item.getName() %> </td>
<td><a href="<%=request.getContextPath()%>/pages/SubjectForm.jsp?id=<%=item.getId()%>">Update</a></td>
<td><a	href="<%=request.getContextPath()%>/controller/SubjectController.jsp?action=delete&id=<%=item.getId()%>">Delete</a></td>

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