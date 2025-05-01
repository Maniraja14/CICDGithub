<!--- /tests/runner.cfm --->
<cfset testbox = createObject("component", "testbox.system.TestBox").init(directory="tests.specs")>
<cfset testResult = testbox.run(recurse=true, reporter="JSON")>

<cfset filepath = expandPath("./") & "test-result.json">
<!--- Write the result to test-result.txt --->
<cfif fileExists(filepath)>
    <cffile action="delete" file="#filepath#" />
</cfif>
<cffile action="write" file="#filepath#" output="#testResult#" />
<cfoutput>#testResult#</cfoutput>