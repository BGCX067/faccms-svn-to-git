<cfinterface displayname="ICommandRead" extends="fac.core.ICommand">
	
	<cffunction name="execute" access="public" returntype="nitro.util.GenericCollection" output="false">
		<cfargument name="value" type="nitro.core.AbsValue" />
	</cffunction>

</cfinterface>