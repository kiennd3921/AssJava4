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
			<form action="${user}" method="post" class="col-6 offset-3">
				<h2>QL Video</h2>
				<div class="form-group">
					<label>Id</label> <input type="text" name="id" value="${video.id}" class="form-control"
						placeholder="ID cua ban" required name="">
				</div>
				<div class="form-group">
					<label>Title</label> <input type="text" name="title" value="${video.title}" class="form-control"
						placeholder="Password cua ban" required name="">
				</div>
				<div class="form-group">
					<label>Description</label> <input type="text" name="description" value="${video.description}" class="form-control"
						placeholder="Email cua ban" required name="">
				</div>
				<div class="form-group">
					<label>View Count</label> <input type="text" name="view" value="${video.view}" class="form-control"
						placeholder="Email cua ban" required name="">
				</div>

				<div>
					<label>Status</label> <select class="form-select" id="status"
						name="role">
						<option ${ user.role == 1 ? "selected" : "" } value="1">Active</option>
						<option ${ user.role == 0 ? "selected" : "" } value="2">InActive</option>
					</select>
				</div>
			</form>
		</div>


		<div class="mt-4 row">
			<div class="col-md-1">
				<button class="btn btn-success">Add</button>
			</div>
			<div class="col-md-1">
				<button class="btn btn-success">Update</button>
			</div>
			<div class="col-md-1">
				<button class="btn btn-success">Delete</button>
			</div>
			<div class="col-md-1">
				<button class="btn btn-success">Reset</button>
			</div>

		</div>
		<div class="mt-5 table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<td>Id</td>
						<td>Title</td>
						<td>View</td>
						<td>Status</td>
						<td></td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="video" items="${ listVideo }">
						<tr>
							<td>${ video.id }</td>
							<td>${ video.title }</td>
							<td>${ video.view }</td>
							<td>${ video.status }</td>
							<td><a href="${video}/edit?id=${ video.id }"
								class="btn btn-primary">Edit</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<ul class="pagination">
				<li class="page-item"><a class="page-link"
					href="/PT15307-UD/video?page=${ page - 1 }"> << </a></li>
				<li class="page-item"><a class="page-link"
					href="/PT15307-UD/video?page=${ page + 1 }"> >> </a></li>
			</ul>
		</div>
	</div>
</body>
</html>