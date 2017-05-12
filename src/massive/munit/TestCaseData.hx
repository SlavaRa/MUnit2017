package massive.munit;
import massive.munit.TestResult.TestResultType;

class TestCaseData {

	public function new(?args:Array<Dynamic>) {
		arguments = args != null ? args : [];
	}
	
	public var arguments(default, null):Array<Dynamic>;
	public var name(default, null):String;
	public var description(default, null):String;
	public var expectedResult(default, null):Dynamic;
	public var hasExpectedResult(default, null):Bool;
	public var state:TestResultType;
	public var resultMessage:String;
	
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
	
	public function toString():String {
		var result = '${state}: ';
		if(name != null) result += name;
		else {
			result += 'arguments => ${Std.string(arguments)}';
			if(hasExpectedResult) result += ', expectedResult => ${expectedResult}';
		}
		if(description != null) result += '\n\t\t${description}';
		if(resultMessage != null) result += '\n\t\t${resultMessage}';
		return result;
	}
}