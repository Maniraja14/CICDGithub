<!--- /tests/runner.cfm --->
<cfset testbox = createObject("component", "testbox.system.TestBox").init(directory="tests.specs")>
<cfoutput>#testbox.run(recurse=true, reporter="JSON")#</cfoutput>
