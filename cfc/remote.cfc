<cfcomponent output="false" >
	
	
	<!--- getModel --->
	<cffunction name="submitData" returntype="query" access="remote" output="true" returnformat="JSON" >
		<cfargument name="firstName" required="true" >
		<cfargument name="lastName" required="true" >
		
		
		<!--- do anything with the data here. --->
		<cfset local.rs = queryNew("firstName,lastName") >
		<cfset queryAddRow(local.rs, 1) >
		
		<cfset querySetCell(local.rs, "firstName", arguments.firstName, 1) >
	    <cfset querySetCell(local.rs, "lastName", arguments.lastName, 1) >
		
		<cfreturn local.rs>
	</cffunction>
	

</cfcomponent>