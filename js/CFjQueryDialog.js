
$(function(){
	
	//when they click the button show the dialog form
	$('#btnDialog').click(function(){		
		$("#divDialog").dialog("open");
	})
	
	
	//make the form a dialog
	$("#divDialog").dialog({
		autoOpen: false,
		
		beforeClose: function() {
			//clean up the inputs when dialog close
		    $("#formObj").trigger("reset");
		}
		
	});

	//submit button action listener
	$("#btnSubmit").click(function(e) {		
		
		var $fname = $('#inName').val();
		var $lastName = $('#inLast').val();
	
		//add validation here before running the ajax if you prefer		
				
				$.ajax({
			            url: 'cfc/remote.cfc',
			            data: {
			            	"firstName" : $fname,
			            	"lastName" : $lastName,
			            	"method" : 'submitData',
			            	//returnType : "query"
			            },
				     	//cache: false,  Iexplorer fix 
		            	dataType: 'json',
					  	beforeSend: function( xhr ) {
					    	//run some gif progress indicator for user feedback
					  	}
  			            
			     })		        
			     .done(function(response) {			        	
			        	
			        	//loop through the response. we expect 1 record but this loop can handle more than one
						for (i = 0; i < response.DATA.length; i++){							
							
							var $F = response.DATA[i][0];//firstName
							var $L = response.DATA[i][1];//lastName
								
						
							//lets display the data
							$('#divResult').html(
								"Hi " + $F + " " + $L + "<br>"
							)
		                }
                			        	
			        	
			        	//display in console if you prefer
			        	//console.log(result);
			        	
					    alert( "success" );
					    $("#divDialog").dialog("close");
					    
				}).fail(function() {
				    alert( "error" );
				    $("#divDialog").dialog("close");
				});
					 
		

					        
		//don't submit the form. we want it be ajaxy	        
		e.preventDefault();
	});
	
	
	
	//ajax settings additions
	$.ajaxSetup({ cache: false }); //disable caching coz this might be a problem in IE
	$( document ).ajaxComplete(function() {
		//after each ajax complete run a function. close the gif spinner 
		
	});
	
	

});//doc ready

