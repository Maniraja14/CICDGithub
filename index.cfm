<cfoutput>
    <h1>Hello World</h1>

    <p>This is a sample ColdFusion application built with TestBox and deployed via FTP.</p>

    <p>The time is: #now()#</p>

    <cfquery>
        SELECT * FROM urlSessionFormat
    </cfquery>
</cfoutput>