<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Dinosaur</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>
<body>
	
	<form:form action="createDinosaur.do" method="POST" modelAttribute="dinosaur">
				
							<form:label path="name">Name</form:label> 
							<form:input type="text"
								class="form-control" required="required" path="name" placeholder="Name"/>
								
								<form:label path="pronunciation">Name Pronunciation</form:label> <form:input
								type="text" class="form-control" path="pronunciation"
								placeholder="Name Pronunciation"/>
								
								
								
					
							<form:label path="nameMeaning">Name Meaning</form:label> <form:input
								type="text" class="form-control" path="nameMeaning"
								placeholder="Name Meaning"/>
				
						<form:label path="areaLived">Area Lived</form:label> <form:input type="text"
							class="form-control" min="1" required="required" path="areaLived" placeholder="Area Lived"/>
		
						<form:label path="timePeriodLived">Time Period Lived</form:label> <form:input type="text"
							class="form-control" required="required" path="timePeriodLived"
							placeholder="Time Period Lived"/>
			
							<form:label path="type">type</form:label> <form:input type="text"
								class="form-control" required="required" path="type" placeholder="Type"/>
					
							<form:label path="heightM">Height</form:label> 
								<form:input type="number"
								class="form-control" required="required" path="heightM" placeholder="Height" />
				
							<form:label path="lengthM">Length</form:label> <form:input type="number"
								class="form-control" required="required" min="1" path="lengthM" placeholder="Length"/>
							
							<form:label path="weightKg">Height</form:label> 
								<form:input type="number"
								class="form-control" required="required" path="weightKg" placeholder="Weight" />	
								
								<form:label path="taxonomy">Taxonomy</form:label> 
								<form:input type="text"
								class="form-control" required="required" path="taxonomy" placeholder="Taxonomy" />
								
								<form:label path="descrition">Description</form:label> 
								<form:input type="text"
								class="form-control" required="required" path="description" placeholder="Description" />
								
								<form:label path="image">Image URL</form:label> 
								<form:input type="text"
								class="form-control" required="required" path="image" placeholder="Image URL" />
								<br>
								<br>
								<button type="submit" class="btn btn-success">Submit</button>
				
				
				</form:form>
		







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