package massive.munit;

class TestCaseData {

	public function new(?args:Array<Dynamic>) {
		arguments = args != null ? args : [];
	}
	
	public var arguments(default, null):Array<Dynamic>;
	public var name(default, null):String;
	public var expectedResult(default, null):Dynamic;
	public var hasExpectedResult(default, null):Bool;
	
	public function setName(name:String):TestCaseData {
		this.name = name;
		return this;
	}
	
	public function returs(result:Dynamic):TestCaseData {
		this.expectedResult = result;
		hasExpectedResult = true;
		return this;
	}
}