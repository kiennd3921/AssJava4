<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width = device-width, initial-scale=1.0">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<link rel="stylesheet" type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<form>
					<h2>Dang Ky</h2>
					<div class="row">
						<div class="col">
							<label>Username</label> <input type="text" class="form-control"
								placeholder="Username cua ban" required name="">
						</div>
						<div class="col">
							<label>Password</label> <input type="password"
								class="form-control" placeholder="Password cua ban" required
								name="">
						</div>
					</div>
					<div class="row">
						<div class="col">
							<label>Full Name</label> <input type="text" class="form-control"
								placeholder="Ten cua ban" required name="">
						</div>
						<div class="col">
							<label>Email Address</label> <input type="email"
								class="form-control" placeholder="Email cua ban" required
								name="">
						</div>
					</div>
					<div class="form-group nav justify-content-end">
						<button class="btn btn-primary" type="submit">Update</button>
						<button class="btn btn-danger" type="submit">Delete</button>
					</div>
				</form>


				<div class="mt-5 table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<td>UserName</td>
								<td>Password</td>
								<td>Fullname</td>
								<td>email</td>
								<td>Role</td>
								<td colspan="1">Action</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${ user.id }</td>
								<td>${ user.password }</td>
								<td>${ user.email }</td>
								<td>${ user.fullname }</td>
								<td>${ user.admin }</td>
								<td>${ user.post.size() }</td>

							</tr>
						</tbody>

					</table>
					<a href="/PT15307-UD/admin/user/edit?id=${ user.id }"
						class="btn btn-primary">Update</a>
					<button class="btn btn-danger">Delete</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


