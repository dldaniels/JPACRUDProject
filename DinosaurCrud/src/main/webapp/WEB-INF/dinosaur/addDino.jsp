<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Dinosaur</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>
<body>


	<h5>New Dinosaur</h5>
	<form action="create.do" method="GET">

		Dinosaur Name: <input type="text" name="name" placeholder="name"
			required="required" /><br> Pronunciation: <input type="text"
			name="pronunciation" placeholder="pronuncitation" /><br> Name
		Meaning: <input type="text" name="nameMeaning"
			placeholder="Name meaning" /><br> Type: <input type="text"
			name="type" placeholder="type" /><br> Time Period Lived <input
			type="text" name="timePeriodLived" placeholder="Time Period Lived" /><br>
		Area Lived: <input type="text" name="areaLived"
			placeholder="Area Lived" /><br> Taxonomy: <input type="text"
			name="taxonomy" placeholder="Taxonomy" /><br> Description: <input
			type="text" name="description" placeholder="Description" /><br>
		Image URL <input type="text" name="image" placeholder="Image URL" /><br>
		Diet:<input type="text" name="diet" placeholder="Diet" /><br>
		Height<input type="number" name="heightM" placeholder="Height" /><br>
		Length<input type="number" name="lengthM" placeholder="Length" /><br>
		Weight<input type="number" name="weightKg" placeholder="Weight" /><br>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		


		<input class="btn btn-warning" type="submit" value="Add Dinosaur" />
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