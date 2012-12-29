<cfcomponent output="false" hint="My App Configuration">
<cfscript>
// Configure ColdBox Application
function configure(){

	// coldbox directives
	coldbox = {
		//Application Setup
		appName 				= "SuperSimpleApp",

		//Development Settings
		debugMode				= true,
		debugPassword			= "",
		reinitPassword			= "",
		handlersIndexAutoReload = true,

		//Implicit Events
		defaultEvent			= "main.index",
		requestStartHandler		= "",
		requestEndHandler		= "",
		applicationStartHandler = "",
		applicationEndHandler	= "",
		sessionStartHandler 	= "",
		sessionEndHandler		= "",
		missingTemplateHandler	= "",

		//Error/Exception Handling
		exceptionHandler		= "",
		onInvalidEvent			= "",
		customErrorTemplate		= "",

		//Application Aspects
		handlerCaching 			= false,
		eventCaching			= false
	};

	wireBox = {
			enabled = true,
			singletonReload=false
		};

	//Layout Settings
	layoutSettings = {
		defaultLayout = "Layout.Main.cfm"
	};

	//Register interceptors as an array, we need order
	interceptors = [
		//SES
		{class="coldbox.system.interceptors.SES",
		 properties={}
		},
		{class="interceptors.Security"}
	];

	interceptorSettings = {
		throwOnInvalidStates = false,
		customInterceptionPoints = "SecurityNoPermission"
	};
}

</cfscript>
</cfcomponent>