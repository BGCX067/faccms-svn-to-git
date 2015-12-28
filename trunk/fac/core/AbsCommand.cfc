<cfcomponent hint="Abstract Command" output="false" implements="fac.core.ICommand">
	
	<cffunction name="execute" access="public">
		<cfabort showerror="Abstract !" />
	</cffunction>

</cfcomponent>