<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QL Users</title>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
</head>
<body>
	<div class="col-8 offset-2">
		<div class="row col-mb-3">
			<form action="${ action }" method="post" class="col-6 offset-3">
				<h2>LOGIN</h2>
				<div class="form-group">
					<label>Id</label> <input id="id" type="text" name="id" value="${user.id}" class="form-control"
						placeholder="ID cua ban" required name="">
				</div>
				<div class="form-group">
					<label>Password</label> <input type="password" name="password" value="${user.password}" class="form-control"
						placeholder="Password cua ban" required name="">
				</div>
				<div class="form-group">
					<label>Email</label> <input type="email" name="email" value="${user.email}" class="form-control"
						placeholder="Email cua ban" required name="">
				</div>

				<div class="form-group">
					<label>Full Name</label> <input type="text" name="fullname" value="${user.fullname}" class="form-control"
						placeholder="Name cua ban" required name="">
				</div>
				<div>
					<label>Role</label> 
					<select class="form-select" id="admin"
						name="admin">
						<option ${ user.admin ? "" : "selected" } value="1">User</option>
						<option ${ user.admin ? "selected" : "" } value="2">Admin</option>
					</select>
				</div>
				<div class="mt-4 row">
			<div class="col-md-1">
				<button class="btn btn-success">Add</button>
			</div>
			<div class="col-md-1">
				<button class="btn btn-success">Update</button>
			</div>
			<div class="col-md-1">
				<a id="btn-delete" href="/PT15307-UD/users/delete?id=${ user.id }" class="btn btn-success">Delete</a>
			</div>
			<div class="col-md-1">
				<a href="/PT15307-UD/user" class="btn btn-success">Reset</a>
			</div>

		</div>
			</form>
		</div>


		
		<div class="mt-5 table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<td>Id</td>
						<td>Password</td>
						<td>Email</td>
						<td>Full Name</td>
						<td>Admin</td>
						<td></td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${ users }">
						<tr>
							<td>${ user.id }</td>
							<td>${ user.password }</td>
							<td>${ user.email }</td>
							<td>${ user.fullname }</td>
							<td>${ user.admin ? 'admin' : 'user'}</td>
							<td><a href="/PT15307-UD/user?id=${ user.id }"
								class="btn btn-primary">Edit</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<ul class="pagination">
				<li class="page-item"><a class="page-link"
					href="/PT15307-UD/users?page=${ page - 1 }"> << </a></li>
				<li class="page-item"><a class="page-link"
					href="/PT15307-UD/users?page=${ page + 1 }"> >> </a></li>
			</ul>
		</div>
	</div>
	
	<script type="text/javascript">
		const btnDelete = document.querySelector('#btn-delete')
		const id = document.querySelector('#id')
		
		btnDelete.addEventListener('click', function() {
			let href = btnDelete.href
			if (confirm("delete") && id.value.length === 0) {
				btnDelete.href = ""
			}
			
		})
	</script>
</body>
</html>