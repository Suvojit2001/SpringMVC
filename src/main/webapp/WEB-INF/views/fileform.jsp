<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<title>File uploading</title>
</head>
<body>
	<div class="container p-5">
		<h1>upload image</h1>
		<form method="post" action="uploadimage" enctype="multipart/form-data">
			<div class="input-group mb-3">
				<button class="btn btn-outline-secondary" type="submit"
					id="inputGroupFileAddon03" >Button</button>
				<input type="file" name="profile" class="form-control" id="inputGroupFile03"
					aria-describedby="inputGroupFileAddon03" aria-label="Upload">
			</div>
		</form>
	</div>
</body>
</html>