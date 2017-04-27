package massive.munit.client;
import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;
import massive.munit.client.HTTPClient;

/**
 * Auto generated MassiveUnit Test Class  for massive.munit.client.URLRequest 
 */
class URLRequestTest {
	
	@Test
	public function testConstructor() {
		var url = "http://www.example.org";
		var instance = new URLRequest(url);
		Assert.isNotNull(instance.client);
		#if (js || neko || cpp || java || cs)
		Assert.areEqual(url, instance.client.url);
		#end
	}
}