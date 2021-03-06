package org.mvcexpress.ticTacToe{
import org.mvcexpress.modules.ModuleCore;
import org.mvcexpress.MvcExpress;
import org.mvcexpress.ticTacToe.controller.setup.SetupControllerCommand;
import org.mvcexpress.ticTacToe.controller.setup.SetupModelCommand;
import org.mvcexpress.ticTacToe.controller.setup.SetupViewCommand;
import org.mvcexpress.ticTacToe.messages.DataMsg;
import org.mvcexpress.ticTacToe.messages.Msg;
import org.mvcexpress.ticTacToe.messages.ViewMsg;
import org.mvcexpress.utils.checkClassStringConstants;
	
/**
 * Main application module.
 * Sets up application and starts it.
 */
public class MainModule extends ModuleCore {
	
	override protected function onInit():void {
		
		// little utility to prevent accidental message constant dublications.
		CONFIG::debug {
			checkClassStringConstants(Msg, DataMsg, ViewMsg);
			
			MvcExpress.debugFunction = trace;
		}
		
		// map commands
		commandMap.execute(SetupControllerCommand);
		// map proxies (and services)
		commandMap.execute(SetupModelCommand);
		// map modiators
		commandMap.execute(SetupViewCommand);
	}
	
    public function start(main:Main):void {
        //trace("Hello mvcExpress!!!");
		// mediate main view.
		mediatorMap.mediate(main);
    }	
	
}
}