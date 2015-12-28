<cfinterface hint="Memento patern">
	
	<cffunction name="setState" access="public" returntype="void" output="false">
		<cfargument name="state" type="struct" required="true" />
	</cffunction>

	<cffunction name="getState" access="public" returntype="struct" output="false">
	</cffunction>

</cfinterface>