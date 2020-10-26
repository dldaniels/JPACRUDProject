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
 <jsp:include page="navigation.jsp"><jsp:param value=""
		name="" /></jsp:include> 
<body>
	<div class="container-fluid">
		<h1 align="center">Welcome to O.J's Dinosaur Discovery Toybox</h1>

		<img src="images/ojdinosaurs.jpg" width="45%" height="45%"
			align="right" />



		<div ailgn="left">
			<table class="table table-striped table-hover" width="50%"
				height="50%">
				<thead class="thead thead-dark">
					<tr>
						<th>Explore O.J's Dinosaur toybox by:</th>
					</tr>
				</thead>
				<tbody>
					<!-- 		<tr>
				<td>Dinosaur Name:</td>
				<td>
				<form action="getDinosaur.do" method="GET">
			 <input type="text" name="fid" /> <input type="submit"
				value="Find Dinosaur" />
		</form> 
		</td>
		</tr> -->
						<tr>

						<td>Create Dinosaurs:</td>

						<td>
							<form action="createDinosaurForm.do" method="GET">
								<input type="submit" value="Create" />
							</form>
						</td>
					</tr>

					<tr>
					
					<tr>

						<td>Update Dinosaurs:</td>

						<td>
							<form action="update.do" method="GET">
								<input type="submit" value="View All" />
							</form>
						</td>
					</tr>

					<tr>
					
					
		
		
		
		
		
					<tr>

						<td>All Dinosaurs:</td>

						<td>
							<form action="getList.do" method="GET">
								<input type="submit" value="View All" />
							</form>
						</td>
					</tr>

					<tr>

						<td>Dinosaurs by type:</td>

						<td>
							<form action="getList.do" method="GET">
								<input type="submit" value="View All" />
							</form>
						</td>
					</tr>

					<tr>

						<td>Dinosaurs by diet:</td>

						<td>
							<form action="getList.do" method="GET">
								<input type="submit" value="View All" />
							</form>
						</td>
					</tr>

					<tr>

						<td>Dinosaurs where they lived:</td>

						<td>
							<form action="getList.do" method="GET">
								<input type="submit" value="View All" />
							</form>
						</td>
					</tr>

					<tr>

						<td>Dinosaurs by when they lived:</td>

						<td>
							<form action="getList.do" method="GET">
								<input type="submit" value="View All" />
							</form>
						</td>
					</tr>





				</tbody>
			</table>

		</div>

		<%-- 	<table class="table table-striped table-hover">
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
		</table> --%>

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