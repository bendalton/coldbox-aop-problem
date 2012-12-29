<cfset this["secured"] = variables["secured"]>

			<cffunction name="secured" access="public" output="false" returntype="any" hint="WireBox AOP just rulez!">
				<cfscript>
					// create new method invocation for this execution
					var invocation = createObject("component","coldbox.system.aop.MethodInvocation").init(method="secured",
																										  args=arguments,
																										  methodMetadata="%7B%22NAME%22%3A%22secured%22%2C%22RETURNTYPE%22%3A%22any%22%2C%22SECURE%22%3A%22%22%2C%22PARAMETERS%22%3A%5B%7B%22NAME%22%3A%22event%22%2C%22REQUIRED%22%3Afalse%7D%2C%7B%22NAME%22%3A%22rc%22%2C%22REQUIRED%22%3Afalse%7D%2C%7B%22NAME%22%3A%22prc%22%2C%22REQUIRED%22%3Afalse%7D%5D%7D",
																										  target=this,
																										  targetName="Sites.aop-problem.handlers.Main",
																										  targetMapping=this.$wbAOPTargetMapping,
																										  interceptors=this.$wbAOPTargets["secured"].interceptors);	
					// execute and return
					return invocation.proceed();
				</cfscript>					
			</cffunction>
			