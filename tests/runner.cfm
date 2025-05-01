<!--- /tests/runner.cfm --->
<cfset testbox = createObject("component", "testbox.system.TestBox").init(directory="tests.specs")>
<cfset testResult = testbox.run(recurse=true, reporter="JSON")>

<!--- Write the result to test-result.txt --->
<cfif fileExists("test-result.txt")>
    <cffile action="delete" file="test-result.txt" />
</cfif>
<cffile action="write" file="test-result.txt" output="#testResult#" />
<cfoutput>#testResult#</cfoutput>