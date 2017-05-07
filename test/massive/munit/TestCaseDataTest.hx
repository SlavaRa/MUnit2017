package massive.munit;

class TestCaseDataTest {

	public function testCases():Array<TestCaseData> {
		return [
			new TestCaseData([1, 2]).returs(3),
			new TestCaseData([4, 2]).returs(6)
		];
	}

	@TestCaseSource("testCases")
	public function test(x:Int, y:Int):Int {
		return x + y;
	}
}