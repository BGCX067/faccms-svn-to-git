<cfcomponent output="false" implements="fac.util.Iterator" hint="MapIterator Component V 1.0" author="Cristian Costantini">
	
	<cfproperty name="index" type="numeric" />
	
	<cffunction name="init" access="public" returntype="MapIterator" output="false">
		<cfargument name="value" type="map" required="true" />
		<cfset variables.value = arguments.value />
		<cfset variables.index = 0 />
		<cfreturn this />
	</cffunction>
	
	<cffunction name="hasNext" access="public" output="false" returntype="boolean">
		<cfset result = false />
		<cfset var list = structKeyList( variables.value ) />
		<cfset result = variables.index LT listLen( list )>
		<cfreturn result />
	</cffunction>

	<cffunction name="next" access="public" output="false" returntype="component">
		<cfset var result = "" />
		<cfset var list = structKeyList( variables.value ) />
		<cfset variables.index = variables.index + 1 />
		<cfset result = variables.value[ listGetAt( list , variables.index ) ] />
		<cfreturn result />
	</cffunction>

	<cffunction name="reset" access="public" output="false" returntype="void">
		<cfset variables.index = 0 />
		<cfreturn />
	</cffunction>

</cfcomponent>