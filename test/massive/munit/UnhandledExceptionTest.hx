package massive.munit;

import massive.munit.Assert;
import massive.munit.UnhandledException;
class UnhandledExceptionTest {
	var instance:UnhandledException; 
	
	public function new() {}
	
	@BeforeClass
	public function beforeClass() {}
	
	@AfterClass
	public function afterClass() {}
	
	@Before
	public function setup() {}
	
	@After
	public function tearDown() {}
	
	@Test
	public function testConstructor() {
		try {
			throw "";
		} catch(e:Dynamic) {
			var source = "original msg";
			var location:String = "location";
			var exception = new UnhandledException(source, location);
			Assert.isNull(exception.info);
			Assert.isTrue(exception.message.indexOf(source) == 0);
			Assert.isTrue(exception.message.indexOf(" at " + location) > 0);
		}
	}
}