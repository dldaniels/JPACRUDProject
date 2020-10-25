<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<title>Show Dinosaur</title>
</head>
<body>
<div class="container fluid">

<div>
<h2>${dinosaur.name}</h2>
<h4>"${dinosaur.nameMeaning}"</h4>
<h4><em>${dinosaur.pronunciation}</em></h4>
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
<img src="${dinosaur.image}" alt=""width="400" height="300">
<h3>${dinosaur.description}</h3>
<%-- <h3>${dinosaur.diet} ${dinosaur.type}</h3>
<br> --%>
<h3>${dinosaur.weightKg} ${dinosaur.heightM} ${dinosaur.lengthM} </h3>
<br>
<h3>${dinosaur.taxonomy}</h3>
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
</div>
</body>
</html>