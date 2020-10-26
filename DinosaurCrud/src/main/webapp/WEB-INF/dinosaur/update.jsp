<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Dinosaur</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">


</head>
<body>




	<h5>New Dinosaur</h5>

	<form action="updateDinosaur.do" method="Post">
		<input type="hidden" name="id" value="${dinosaur.id}" /> Name: <input
			type="text" name="name" value="${dinosaur.name}" /> Type: <input
			type="text" name="type" value=" ${dinosaur.type}" /> Diet: <input
			type="text" name="diet" value="${dinosaur.diet} " /> Pronunciation:
		<input type="text" name="pronunciation"
			value="${dinosaur.pronunciation}" /> Image: <input type="text"
			name="image" value="${dinosaur.image}" /> Taxonomy: <input
			type="text" name="taxonomy" value="${dinosaur.taxonomy}" />
		Description: <input type="text" name="description"
			value=" ${dinosaur.description}" /> Name Meaning: <input type="text"
			name="nameMeaning" value="${dinosaur.nameMeaning} " /> Time Period
		Lived: <input type="text" name="timePeriodLived"
			value="${dinosaur.timePeriodLived}" /> Area Lived: <input
			type="text" name="areaLived" value="${dinosaur.areaLived}" /> Height
		in Meters: <input type="number" name="heightM"
			value="${dinosaur.heightM} " /> Length in Meters: <input
			type="number" name="lengthM" value="${dinosaur.lengthM}" /> Weight
		in KG: <input type="number" name="weightKg"
			value="${dinosaur.weightKg}" />
		<button class="btn btn-outline-primary" type="submit" name="id"
			value="${dinosaur.id}">Update Dinosaur</button>

	</form>




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