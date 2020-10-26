<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dinosaur Database</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>



<body>
	<div class="container-fluid">
		<h1>O.J's Dinosaur Discovery Zone</h1>
		<h3>All Dinosaurs</h3>

		<form action="getDinosaur.do" method="GET">
			Dinosaur ID: <input type="text" name="fid" /> <input type="submit"
				value="Find Dinosaur" />
		</form>

		<table class="table table-striped table-hover">
			<thead class="thead thead-dark">
				<tr>
					<th>Dinosaur Name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${dinosaurs}" var="dino">
					<tr>
						<td><a href="getDinosaur.do?fid=${dino.id}">${dino.name}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

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