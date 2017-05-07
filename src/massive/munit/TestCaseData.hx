package massive.munit;

class TestCaseData {

	public function new(?args:Array<Dynamic>) {
		arguments = args != null ? args : [];
	}
	
	public var arguments(default, null):Array<Dynamic>;
	public var name(default, null):String;
	public var description(default, null):String;
	public var expectedResult(default, null):Dynamic;
	public var hasExpectedResult(default, null):Bool;
	
	public function setName(value:String):TestCaseData {
		name = value;
		return this;
	}
	
	public function setDescription(value:String):TestCaseData {
		description = value;
		return this;
	}
	
	public function returs(result:Dynamic):TestCaseData {
		expectedResult = result;
		hasExpectedResult = true;
		return this;
	}
}