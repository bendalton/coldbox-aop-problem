/**
* Security Interceptor
@classMatcher regex:handler
@methodMatcher annotatedWith:secure
**/
component implements="coldbox.system.aop.MethodInterceptor" accessors="true" {

	// Dependencies

	// Don't inject this dependency, it causes big problems!
	// property name="MessageBox" inject="coldbox:plugin:MessageBox";
	
	any function init(){
		application['aspect'&right(createUUID(),5)] = [timeformat(now(),'hh:mm:ss:l'),arguments];
	}

	any function invokeMethod(required invocation) output=false{


		var metaData = invocation.getMethodMetadata();
		var methodArguments = invocation.getArgs();
		var targetHandler = invocation.getTarget();

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
			targetHandler.announceInterception('SecurityNoPermission',targetHandler);
			return;
		}

	}

}