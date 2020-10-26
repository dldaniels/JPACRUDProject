<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Dinosaur</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>



<body>

	<div class="container fluid">
		<div>

			<h2>${dinosaur.name}</h2>
			<h4>"${dinosaur.nameMeaning}"</h4>
			<h4>
				<em>${dinosaur.pronunciation}</em>
			</h4>
			Delete Dinosaur
			<form action="deleteDinosaur.do" method="GET">
				<input type="number" name="dinosaurs" placeholder="${dinosaur.id}"
					value="Delete Dinosaur" required="required" />
				<button class="btn btn-outline-primary" type="submit" name="id"
					value="${dinosaur.id}">Delete Dinosaur</button>

			</form>

			Edit Dinosaur
			<form action="editDinosaur.do" method="GET">
				<button class="btn btn-outline-primary" type="submit" name="id"
					value="${dinosaur.id}">Edit Dinosaur</button>
			</form>
			<table class="table table-striped">
				<thead class="thead thead-dark">
					<tr>
						<th>Type</th>
						<th>Diet</th>
						<th>Location</th>
						<th>Period</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${dinosaur.type}</td>
						<td>${dinosaur.diet}</td>
						<td>${dinosaur.areaLived}</td>
						<td>${dinosaur.timePeriodLived}</td>
					</tr>
				</tbody>
			</table>
			<table>
				<tr>
					<td><img src="${dinosaur.image}" alt="" width="400"
						height="300" align="left"></td>
					<td>
						<table class="table table-striped" style="width: 100%"
							style="height: 160%">
							<thead class="thead thead-dark">
								<tr>
									<th>Length in meters</th>
									<th>Height in meters</th>
									<th>Weight in KG</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${dinosaur.lengthM}</td>
									<td>${dinosaur.heightM}</td>
									<td>${dinosaur.weightKg}</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</table>
			<table class="table table-striped" style="width: 100%">
				<thead class="thead thead-dark">
					<tr>
						<th>Dinosaur Description</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${dinosaur.description}</td>
					</tr>
				</tbody>




			</table>
			<table class="table table-striped" style="width: 100%">
				<thead class="thead thead-dark">
					<tr>
						<th>Taxonomy</th>
					</tr>
				</thead>
				<tr>
					<td>${dinosaur.taxonomy}</td>
				</tr>
			</table>

		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
		integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
		crossorigin="anonymous"></script>
</body>
</html>