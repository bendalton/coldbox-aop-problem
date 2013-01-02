<cfoutput>
<h1>Simple Security AOP Example</h1>

<b>Event:</b>#rc.event#

<ul>
	<li><a href="#event.buildLink("main/index")#">Unsecured</a></li>
	<li><a href="#event.buildLink("main/secured")#">Secured</a></li>
</ul>
</cfoutput>