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
		<h1 align="center">Welcome to O.J's Dinosaur Discovery Toybox</h1>





		<div>
			<table class="table table-striped table-hover">
				<thead class="thead thead-dark">
					<tr>

						<th>Explore O.J's Dinosaur toybox :</th>

					</tr>
					<tr>


					</tr>
				</thead>
				<tbody>

					<tr>

						<td>Add a Dinosaur:</td>

						<td>
							<form action="createDinosaurForm.do" method="GET">
								<input type="submit" value="Add Dinosaur" />
							</form>
						</td>
					</tr>

					<tr>
					<tr>
					<tr>

						<td>View all Dinosaurs:</td>

						<td>
							<form action="getList.do" method="GET">
								<input type="submit" value="View All" />
							</form>
						</td>
					</tr>

					<tr>

						<td>View all Herbivores:</td>

						<td>
							<form action="getHerbivore.do" method="GET">
								<input type="submit" value="View All" />
							</form>
						</td>
					</tr>

					<tr>

						<td>View all Carnivores:</td>

						<td>
							<form action="getCarnivore.do" method="GET">
								<input type="submit" value="View All" />
							</form>
						</td>
					</tr>

					<tr>

						<td>Search:</td>

						<td>
							<form action="getSearch.do" method="GET">
								<input type="text" name="search" value="Search" />
								<button class="btn btn-outline-primary" type="submit"
									name="Search">Search</button>
							</form>
						</td>
					</tr>





				</tbody>
			</table>

			<img src="images/ojdinosaurs.jpg" width="100%" height="100%"
				align="right" />

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