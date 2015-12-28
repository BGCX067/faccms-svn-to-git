<cfcomponent extends="nitro.util.GenericCollection" output="false" hint="Map Component V 1.0" author="Cristian Costantini">
	
	<cfproperty name="source" type="struct">
	
	<!--- get set --->
	
	<cffunction name="setSource" access="public" returntype="void" output="false">
		<cfargument name="source" type="struct" required="true" />
		<cfset variables.source = arguments.source />
	</cffunction>
	
	<cffunction name="getSource" access="public" returntype="struct" output="false">
		<cfreturn variables.source />
	</cffunction>
	
	<!--- costruttore --->
	
	<cffunction name="init" access="public" returntype="Map" output="false">
		<cfargument name="source" type="struct" required="false" default="#structNew()#" />
		<cfset variables.source = arguments.source />
		<cfreturn this />
	</cffunction>
	
	<!--- utils --->
	
	<cffunction name="add" access="public" returntype="boolean" output="false" hint="Add item map">
		<cfargument name="value" type="struct" required="true" />
		<cfset var result = structAppend( variables.source , arguments.value ) />
		<cfreturn result />
	</cffunction>
	
	<cffunction name="getItemAt" access="public" returntype="component" output="false" hint="Get item at">
		<cfargument name="key" type="string" required="true" />
		<cfset var result = variables.source[ arguments.key ] />
		<cfreturn result />
	</cffunction>
	
	<cffunction name="deleteItemAt" access="public" returntype="boolean" output="false" hint="Delete item at">
		<cfargument name="key" type="numeric" required="true" />
		<cfset var result = structDelete( variables.source , arguments.key )/>
		<cfreturn result />
	</cffunction>
	
	<cffunction name="clear" access="public" returntype="boolean" output="false" hint="Clear Struct">
		<cfargument name="position" type="numeric" required="true" />
		<cfset var result = structClear( variables.source )/>
		<cfreturn result />
	</cffunction>
	
	<cffunction name="isEmpty" access="public" returntype="boolean" output="false" hint="Struct is empty">
		<cfset var result = structIsEmpty( variables.source )/>
		<cfreturn result />
	</cffunction>
	
	<cffunction name="collectionLen" access="public" returntype="numeric" output="false">
		<cfset var result = structCount( variables.source )/>
		<cfreturn result />
	</cffunction>
	
	<!--- Factory --->
	
	<cffunction name="createMapIterator" access="public" returntype="component" output="false">
		<cfset var result = CreateObject( 'component' , 'MapIterator' ) />
		<cfset result.init( variables.source ) />
		<cfreturn result />
	</cffunction>

</cfcomponent>