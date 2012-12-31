/**
* Security Interceptor
@classMatcher regex:handler
@methodMatcher annotatedWith:secure
**/
component implements="coldbox.system.aop.MethodInterceptor" accessors="true" {

	// Dependencies
	property name="MessageBox" inject="coldbox:plugin:MessageBox";
	
	any function invokeMethod(required invocation) output=false{

		var metaData = invocation.getMethodMetadata();
		var methodArguments = invocation.getArgs();

		var rc = methodArguments.rc;
		var event = methodArguments.event;
		var prc = methodArguments.prc;

		var hasPermission = false;
		// writeoutput(hasPermission); abort;
		if(hasPermission){
			var results = invocation.proceed();
			return results;
		}
		else
		{
			// writedump(this);
			// abort;

			// This always fails with ( Cannot invoke method put on an object of type java.lang.String with named argument)
			MessageBox.setMessage('error',"You must be logged in and have permissions to perform this action.");

			// This fails with (Variable SETNEXTEVENT is undefined.)
			setNextEvent('/account/login');
			return;
		}

	}

}