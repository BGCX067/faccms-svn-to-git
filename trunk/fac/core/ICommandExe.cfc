<cfinterface displayname="ICommandRead" extends="fac.core.ICommand">
	
	<cffunction name="execute" access="public" returntype="string">
		<cfargument name="value" type="nitro.core.AbsValue" />
	</cffunction>

</cfinterface>