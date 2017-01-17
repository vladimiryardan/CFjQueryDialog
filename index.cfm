



<cfoutput>
	<!DOCTYPE html>
	<html>
	<head>
	<title>CF jQuery Dialog</title>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">

	<link rel="stylesheet" href="css/CFjQueryDialog.css" media="screen">	
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	
	<script src="js/CFjQueryDialog.js"></script>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	
	</head>
	
	<body>
	
	<!--- trigger to open dialog --->
	<button id="btnDialog">Open Dialog	
	</button>
	

	<!--- divs into a jQuery dialog. required  --->
	<div id="divDialog" title="Dialog Title">
		
		<form method="post" id="formObj"  >
			<input type="text" name="inName" id="inName" value=""  placeholder="First Name" required>
			<input type="text" name="inLast" id="inLast" value=""  placeholder="Last Name" required>
			<input id="btnSubmit" name="btnSubmit" type="button"  value="Submit">
		</form>
		
		
		
	</div>
	
	<!--- just to display the data returned from server --->
	<div id="divResult">
	</div>
	
	</body>
	
	</html>
</cfoutput>




