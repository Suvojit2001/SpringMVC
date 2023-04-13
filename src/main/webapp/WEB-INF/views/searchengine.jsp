<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Google search Engine</title>
</head>
<body>
	<div class="card text-center">
		<div class="card-header">Google Search Engine</div>
		<div class="card-body">
			<div class="container">
				<form action="google">
					<div class="container m-10 p-12" style="width:500px;">
						<input type="text" class="form-control " id="exampleInputEmail1"
							placeholder="Search Google or type a URl"
							aria-describedby="emailHelp" name="query">
						<div id="emailHelp" class="form-text" ></div>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>

			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>