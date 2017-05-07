package massive.munit;
import haxe.macro.Expr;

class TestCaseData {

	public function new(?args:Array<Dynamic>) {
		arguments = args != null ? args : [];
	}
	
	public var arguments(default, null):Array<Dynamic>;
	public var expectedResult(default, null):Dynamic;
	public var hasExpectedResult(default, null):Bool;
	
	public function returs(result:Dynamic):TestCaseData {
		this.expectedResult = result;
		hasExpectedResult = true;
		return this;
	}
}