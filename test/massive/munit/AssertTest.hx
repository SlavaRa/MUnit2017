/**************************************** ****************************************
 * Copyright 2010 Massive Interactive. All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, are
 * permitted provided that the following conditions are met:
 * 
 *	1. Redistributions of source code must retain the above copyright notice, this list of
 *	   conditions and the following disclaimer.
 * 
 *	2. Redistributions in binary form must reproduce the above copyright notice, this list
 *	   of conditions and the following disclaimer in the documentation and/or other materials
 *	   provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY MASSIVE INTERACTIVE ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 * FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL MASSIVE INTERACTIVE OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 * The views and conclusions contained in the software and documentation are those of the
 * authors and should not be interpreted as representing official policies, either expressed
 * or implied, of Massive Interactive.
 */
package massive.munit;

import massive.munit.Assert;

/**
 * @author Mike Stead
 */
class AssertTest 
{
	public function new() 
	{
		
	}
	
	@Test
	public function testIsTrue()
	{
		Assert.isTrue(true);
		try 
		{
			Assert.isTrue(false);
		}
		catch (e:AssertionException) 
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}
	
	@Test
	public function testIsFalse()
	{
		Assert.isFalse(false);
		try 
		{
			Assert.isFalse(true);
		}
		catch (e:AssertionException) 
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}
	
	@Test
	public function testIsNull()
	{
		Assert.isNull(null);
		try 
		{
			Assert.isNull({});
		}
		catch (e:AssertionException) 
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}
	
	@Test
	public function testIsNotNull()
	{
		Assert.isNotNull({});
		try 
		{
			Assert.isNotNull(null);
		}
		catch (e:AssertionException) 
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}
	
	@Test
	public function testIsNaN()
	{
		Assert.isNaN(Math.NaN);
		try 
		{
			Assert.isNaN(1);
		}
		catch (e:AssertionException) 
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}
	
	@Test
	public function testIsNotNaN()
	{
		Assert.isNotNaN(1);
		try 
		{
			Assert.isNotNaN(Math.NaN);
		}
		catch (e:AssertionException) 
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}
	
	@Test
	public function testIsType()
	{
		Assert.isType(1, Int);
		try 
		{
			Assert.isType(1, String);
		}
		catch (e:AssertionException) 
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}
	
	@Test
	public function testIsNotType()
	{
		Assert.isNotType(1, String);
		try 
		{
			Assert.isNotType(1, Int);
		}
		catch (e:AssertionException) 
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}
	
	@Test
	public function testAreEqualString()
	{
		Assert.areEqual("yoyo", "yoyo");
		try 
		{
			Assert.areEqual("", "yoyo");
		}
		catch (e:AssertionException) 
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}
	
	@Test
	public function testAreEqualObject()
	{
		var obj:Dynamic = { };
		Assert.areEqual(obj, obj);
		try 
		{
			Assert.areEqual({ }, obj);
		}
		catch (e:AssertionException) 
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}
	
	@Test
	public function testAreEqualNumber()
	{
		Assert.areEqual(1, 1);
		try 
		{
			Assert.areEqual(1, 2);
		}
		catch (e:AssertionException) 
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}
	
	@Test
	public function testAreEqualEnum()
	{
		Assert.areEqual(ValueA, ValueA);
		try
		{
			Assert.areEqual(ValueA, ValueB);
		}
		catch (e:AssertionException)
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}

	@Test
	public function testAreEqualEnumWithParam()
	{
		Assert.areEqual(ValueC("foo"), ValueC("foo"));
		try
		{
			Assert.areEqual(ValueC("foo"), ValueC("bar"));
		}
		catch (e:AssertionException)
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}
	
	@Test
	public function testAreNotEqualString()
	{
		Assert.areNotEqual("", "yoyo");
		try 
		{
			Assert.areNotEqual("yoyo", "yoyo");
		}
		catch (e:AssertionException) 
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}
	
	@Test
	public function testAreNotEqualObject()
	{
		var obj:Dynamic = { };
		Assert.areNotEqual({}, obj);
		try 
		{
			Assert.areNotEqual(obj, obj);
		}
		catch (e:AssertionException) 
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}
	
	@Test
	public function testAreNotEqualNumber()
	{
		Assert.areNotEqual(1, 2);
		try 
		{
			Assert.areNotEqual(1, 1);
		}
		catch (e:AssertionException) 
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}

	@Test
	public function testAreNotEqualEnum()
	{
		Assert.areNotEqual(ValueA, ValueB);
		try
		{
			Assert.areNotEqual(ValueA, ValueA);
		}
		catch (e:AssertionException)
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}

	@Test
	public function testAreNotEqualEnumWithParam()
	{
		Assert.areNotEqual(ValueC("foo"), ValueC("bar"));
		try
		{
			Assert.areNotEqual(ValueC("foo"), ValueC("foo"));
		}
		catch (e:AssertionException)
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}

    @Test
	public function testAreSameString()
	{
		Assert.areSame("yoyo", "yoyo");
		try
		{
			Assert.areEqual("", "yoyo");
		}
		catch (e:AssertionException)
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}

	@Test
	public function testAreSameObject()
	{
		var obj:Dynamic = {};
		Assert.areSame(obj, obj);
		try
		{
			Assert.areSame({}, obj);
		}
		catch (e:AssertionException)
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}

	@Test
	public function testAreNotSameString()
	{
		Assert.areNotSame("", "yoyo");
		try
		{
			Assert.areNotSame("yoyo", "yoyo");
		}
		catch (e:AssertionException)
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}

	@Test
	public function testAreNotSameObject()
	{
		var obj:Dynamic = {};
		Assert.areNotSame({}, obj);
		try
		{
			Assert.areNotSame(obj, obj);
		}
		catch (e:AssertionException)
		{
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}

	@Test
	public function testFail()
	{
		try 
		{
			Assert.fail("failure message");
		}
		catch (e:AssertionException) 
		{
			Assert.areEqual("failure message", e.message); 
			return;
		}
		Assert.fail("Invalid assertion not captured");
	}
	
	@Test
	public function testThrowsStringAndObject()
	{
		// Positive case: throws expected string
		var expectedMessage:String = "Invalid operation!";
		var actualMessage:String = Assert.throws(String, function()
		{
			throw expectedMessage;
		});
		Assert.areEqual(expectedMessage, actualMessage);

		// Positive case: throws expected exception
		var expectedError:CustomException = new CustomException('URL not reachable', 37);
		var actualError:CustomException = Assert.throws(CustomException, function()
		{
			throw expectedError;
		});
		Assert.areEqual(expectedError.message, actualError.message);
		Assert.areEqual(expectedError.code, actualError.code);

		// Negative case: assertion raised if block doesn't throw
		try
		{
			Assert.throws(String, function()
			{
				// Doesn't throw
			});
		}
		catch (e:AssertionException)
		{
			Assert.isTrue(e.message.indexOf("wasn't thrown") > -1);
		}
	}

	@Test
	public function testThrowsFailsIfWrongExceptionTypeThrown()
	{
		try
		{
			Assert.throws(CustomException, function()
			{
				throw "String error!";
			});
			Assert.fail("Throwing the wrong exception type didn't fail");
		}
		catch (e:AssertionException)
		{
			Assert.isTrue(e.message.indexOf("Expected exception of type") > -1);
		}
	}
    
}

private enum DummyEnum
{
	ValueA;
	ValueB;
	ValueC(param:String);
}

private class CustomException
{
	public var message(default, default):String;
	public var code(default, default):Int;
	
	public function new(message:String, code:Int)
	{
		this.message = message;
		this.code = code;
	}
}
