<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
  <h1>${Header}</h1>
  <h1>${footer }</h1>
	<div class="container">
		<div class="card text-dark  mb-3" style="background-color: #e3f2fd;">
			<div class="card-header">Registration page</div>

			<div class="card-body">

				<div class="container">
					<form class="row g-3" action="processform" method="post">
						<div class="col-md-6">
							<label for="inputName4" class="form-label">Name</label> <input
								type="text" name="name" class="form-control" id="inputName4"
								required>
						</div>
						<div class="col-md-6">
							<label for="inputEmail4" class="form-label">Email</label> <input
								type="email" name="email" class="form-control" id="inputEmail4"
								required>
						</div>
						<div class="col-md-6">
							<label for="inputPhone4" class="form-label">Phone</label> <input
								type="number" name="phone" class="form-control" id="inputPhone4"
								required>
						</div>
						<div class="col-md-6">
							<label for="inputPassword4" class="form-label">Password</label> <input
								type="password" name="password" class="form-control"
								id="inputPassword4" required>
						</div>
						<div class="col-12">
							<label for="inputAddress" class="form-label">Address</label> <input
								type="text" class="form-control" name="address"
								id="inputAddress" placeholder="1234 Main St">
						</div>
						<div class="container text-center">
							<div class="col-12">
								<button type="submit" class="btn btn-primary">Sign in</button>
							</div>
						</div>
					</form>

				</div>

			</div>
		</div>
	</div>
</body>
</html>

