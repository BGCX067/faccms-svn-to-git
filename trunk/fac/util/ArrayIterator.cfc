<cfcomponent output="false" implements="fac.util.Iterator" hint="ArrayIterator Component V 1.0" author="Cristian Costantini">
	
	<cfproperty name="index" type="numeric" />
	
	<cffunction name="init" access="public" returntype="ArrayIterator" output="false">
		<cfargument name="value" type="array" required="true" />
		<cfset variables.value = arguments.value />
		<cfset variables.index = 0 />
		<cfreturn this />
	</cffunction>
	
	<cffunction name="hasNext" access="public" output="false" returntype="boolean">
		<cfset result = false />
		<cfset result = variables.index LT len( variables.value )>
		<cfreturn result />
	</cffunction>

	<cffunction name="next" access="public" output="false" returntype="component">
		<cfset var result = "" />
		<cfset variables.index = variables.index + 1 />
		<cfset result = variables.value[ variables.index ] />
		<cfreturn result />
	</cffunction>

	<cffunction name="reset" access="public" output="false" returntype="void">
		<cfset variables.index = 0 />
		<cfreturn />
	</cffunction>

</cfcomponent>