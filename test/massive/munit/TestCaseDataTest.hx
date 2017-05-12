package massive.munit;

class TestCaseDataTest {

	public function testCases():Array<TestCaseData> return [
		new TestCaseData([1, 2]).returs(3),
		new TestCaseData([4, 2]).returs(6).setDescription("a + b = c"),
		new TestCaseData([1, 2]).returs(3).setDescription("1 + 2 = 3"),
	];

	@TestCaseSource("testCases")
	public function test(x:Int, y:Int):Int return x + y;
	
	public function testCases2():Array<TestCaseData> return [
		new TestCaseData([true]).returs(true).setName("test name")
	];

	@TestCaseSource("testCases2")
	public function test2(value:Bool):Bool return value;
}