<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Complex form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container ">
		<div class="alert alert-danger alert-dismissible fade show"
			role="alert">
			<strong>
			<form:errors path="student.*" />  <!--this is a jstl tag  -->
			</strong>
			<button type="button" class="btn-close" data-bs-dismiss="alert"
				aria-label="Close"></button>
		</div>
		<div class="container my-5">
			<form class="row g-3" action="formhandle" method="post">
				<div class="col-md-6">
					<label for="inputEmail4" class="form-label">name</label> <input
						type="text" name="name" class="form-control" id="inputEmail4">
				</div>
				<div class="col-md-6">
					<label for="inputPassword4" class="form-label">DOB</label> <input
						type="text" name="date" class="form-control"
						placeholder="dd/mm/yyyy" id="inputPassword4">
				</div>
				<select name="select" class="form-select"
					aria-label="Default select example">
					<option selected>Select courses</option>
					<option>c++</option>
					<option>java</option>
					<option>python</option>
				</select>
				<div class="col-md-6">
					<label for="inputCity" class="form-label">City</label> <input
						type="text" name="address.city" class="form-control"
						id="inputCity">
				</div>
				<div class="col-md-4">
					<label for="inputState" class="form-label">State</label> <input
						type="text" name="address.state" class="form-control"
						id="inputCity">

				</div>
				<div class="col-md-2">
					<label for="inputZip" class="form-label">Zip</label> <input
						type="number" name="address.zip" class="form-control"
						id="inputZip">
				</div>
				<div class="col-12">
					<button type="submit" class="btn btn-primary">Sign in</button>
				</div>

			</form>
		</div>
	</div>
</body>
</html>