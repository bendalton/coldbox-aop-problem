/**
* Main Event Handler
*/
component{
	
	property name="MessageBox" inject="coldbox:plugin:MessageBox";

	// Index
	any function index(event,rc,prc){
		// MessageBox.setMessage('info',"MessageBox Works.");
	}

	// marked with secure
	any function secured(event,rc,prc) secure{
		event.setView('main/index');
	}
	
}