coldbox-aop-problem
===================

Example code which isolates some errors I've encountered regarding DI and AOP and FrameworkSupertype inheritence

###Issue 1
Issue2.html - Error output and stacktrace
In the aspect, inject MessageBox via inject="coldbox:plugin:MessageBox" and when I attempt to call setMessage on that property, I get an error that my message box property is a string and does not have the method setMessage.

###Issue 2
Issue2.html - Error output and stacktrace
When I attempt to call any of the FrameworkSupertype methods which are clearly present on the Aspect when I writedump(this), I get errors that those methods are undefined.
