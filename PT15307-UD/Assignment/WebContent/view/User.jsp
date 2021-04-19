<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="mt-5 table-responsive">
		<table class="table table-striped">
			<thead>
				<tr>
					<td>Id</td>
					<td>PassWoed</td>
					<td>Email</td>
					<td>Full Name</td>
					<td>Role</td>
					<td></td>

					<td colspan="2">Action</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${ listUser }">
					<tr>
						<td>${ user.id }</td>
						<td>${ user.password }</td>
						<td>${ user.email }</td>
						<td>${ user.fullname }</td>
						<td>${ user.admin }</td>
						<td>${ user.post.size() }</td>
						<td><a href="/PT15307-UD/admin/user/edit?id=${ user.id }"
							class="btn btn-primary">Edit</a></td>
						<td>
							<button class="btn btn-danger">Delete</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</body>
</html>