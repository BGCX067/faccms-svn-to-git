<cfcomponent output="false" extends="GenericCollection"  hint="List Component V 1.0" author="Cristian Costantini">
	
	<cfproperty name="source" type="array">
	
	<!--- get set --->
	
	<cffunction name="setSource" access="public" returntype="void" output="false">
		<cfargument name="source" type="array" required="true" />
		<cfset variables.source = arguments.source />
	</cffunction>
	
	<cffunction name="getSource" access="public" returntype="array" output="false">
		<cfreturn variables.source />
	</cffunction>
	
	<!--- costruttore --->
	
	<cffunction name="init" access="public" returntype="List" output="false">
		<cfargument name="source" type="array" required="false" default="#arrayNew(1)#" />
		<cfset variables.source = arguments.source />
		<cfreturn this />
	</cffunction>
	
	<!--- utils --->
	
	<cffunction name="add" access="public" returntype="boolean" output="false" hint="Add item array">
		<cfargument name="value" type="Any" required="true" />
		<cfset var result = arrayAppend( variables.source , arguments.value ) />
		<cfreturn result />
	</cffunction>
	
	<cffunction name="getItemAt" access="public" returntype="component" output="false" hint="Get item at">
		<cfargument name="position" type="numeric" required="true" />
		<cfset var result = variables.source[ arguments.position ] />
		<cfreturn result />
	</cffunction>
	
	<cffunction name="insertItemAt" access="public" returntype="boolean" output="false" hint="Insert item at">
		<cfargument name="position" type="numeric" required="true" />
		<cfargument name="value" type="Any" required="true" />
		<cfset var result = arrayInsertAt( variables.source , arguments.position , arguments.value )/>
		<cfreturn result />
	</cffunction>
	
	<cffunction name="deleteItemAt" access="public" returntype="boolean" output="false" hint="Delete item at">
		<cfargument name="position" type="numeric" required="true" />
		<cfset var result = arrayDeleteAt( variables.source , arguments.position )/>
		<cfreturn result />
	</cffunction>
	
	<cffunction name="clear" access="public" returntype="boolean" output="false" hint="Clear array">
		<cfargument name="position" type="numeric" required="true" />
		<cfset var result = arrayClear( variables.source )/>
		<cfreturn result />
	</cffunction>
	
	<cffunction name="toList" access="public" returntype="string" output="false" hint="Array to list">
		<cfset var result = arrayToList( variables.source )/>
		<cfreturn result />
	</cffunction>
	
	<cffunction name="isEmpty" access="public" returntype="boolean" output="false" hint="Array is empty">
		<cfset var result = arrayIsEmpty( variables.source )/>
		<cfreturn result />
	</cffunction>
	
	<cffunction name="collectionLen" access="public" returntype="numeric" output="false">
		<cfset var result = arrayLen( variables.source )/>
		<cfreturn result />
	</cffunction>
	
	<!--- Factory --->
	
	<cffunction name="createIterator" access="public" returntype="component" output="false">
		<cfset var result = CreateObject( 'component' , 'ArrayIterator' ) />
		<cfset result.init( variables.source ) />
		<cfreturn result />
	</cffunction>

</cfcomponent>