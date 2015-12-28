<cfinterface  hint="Composite pattern">

	<cffunction name="add" access="public" returntype="void" output="false">
		<cfargument name="component" type="component" required="true" />
	</cffunction>
	
	<cffunction name="remove" access="public" returntype="void" output="false">
		<cfargument name="component" type="component" required="true" />
	</cffunction>

	<cffunction name="getChild" access="public" returntype="component" output="false">
		<cfargument name="item" type="numeric" required="true" />
	</cffunction>

</cfinterface>