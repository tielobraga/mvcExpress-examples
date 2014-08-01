package mindscriptact.mobileTestApp.controler.test {
import mindscriptact.mobileTestApp.model.TestProxy;

import mvcexpress.mvc.Command;

/**
 * TODO:CLASS COMMENT
 * @author Raimundas Banevicius (http://www.mindscriptact.com/)
 */
public class TestClickCommand extends Command {

	[Inject]
	public var testProxy:TestProxy;

	public function execute(blank:Object):void {
		trace("TestClickCommand.execute > blank : " + blank);

		testProxy.countTestClicks();
	}

}
}