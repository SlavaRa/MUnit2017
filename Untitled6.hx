Running process: C:\tools\FlashDevelop-development\Tools\fdbuild\fdbuild.exe "C:\projects\MUnit2017\MUnit2017.hxproj" -ipc d06b4bbd-517a-44aa-87e8-b38a99329976 -version "3.4.2" -compiler "C:\HaxeToolkit\haxe" -library "C:\tools\FlashDevelop-development\Library" -target "neko"
Building MUnit2017
Running Pre-Build Command Line...
cmd: cmd /c haxe build.hxml
compile tool

Massive Unit - Copyright 2017 Massive Interactive. Version src

   haxe -main TestMain -cp test -cp src -cp ../src -lib mlib -neko ../bin/test/tool/munit_tool_test.n -lib mcover -D MCOVER --macro mcover.MCover.coverage([''],['src'],[''])



MUnit Results

------------------------------suiteIndex: 0, testSuites.length: 1



Class: massive.munit.ConfigTest xxxxxxxx [1.47%]

    ERROR: massive.munit.UnhandledException: Invalid field access : resolveFile at massive.munit.ConfigTest#testConstructor at massive/munit/Config.hx (55)

	at massive/munit/Config.hx (32)

	at massive/munit/ConfigTest.hx (43)

	at massive/munit/TestRunner.hx (270)



    ERROR: massive.munit.UnhandledException: Invalid field access : resolveDirectory at massive.munit.ConfigTest#testCreateDefault at massive/munit/ConfigTest.hx (95)

	at massive/munit/TestRunner.hx (270)



    ERROR: massive.munit.UnhandledException: Invalid call at massive.munit.ConfigTest#testRemove at massive/munit/ConfigTest.hx (70)

	at massive/munit/TestRunner.hx (270)



    ERROR: massive.munit.UnhandledException: Invalid call at massive.munit.ConfigTest#testToString at massive/munit/ConfigTest.hx (269)

	at massive/munit/TestRunner.hx (270)



    ERROR: massive.munit.UnhandledException: Invalid field access : resolveDirectory at massive.munit.ConfigTest#testUpdateBin at massive/munit/ConfigTest.hx (167)

	at massive/munit/TestRunner.hx (270)



    ERROR: massive.munit.UnhandledException: Invalid field access : resolveDirectory at massive.munit.ConfigTest#testUpdateHxml at massive/munit/ConfigTest.hx (245)

	at massive/munit/TestRunner.hx (270)



    ERROR: massive.munit.UnhandledException: Invalid field access : resolveDirectory at massive.munit.ConfigTest#testUpdateReport at massive/munit/ConfigTest.hx (206)

	at massive/munit/TestRunner.hx (270)



    ERROR: massive.munit.UnhandledException: Invalid field access : resolveDirectory at massive.munit.ConfigTest#testUpdateSrc at massive/munit/ConfigTest.hx (128)

	at massive/munit/TestRunner.hx (270)





------------------------------

COVERAGE REPORT

------------------------------



OVERALL COVERAGE STATS:



    packages    20%        1 / 5      

    files       6.67%      1 / 15     

    classes     6.67%      1 / 15     

    methods     0.75%      1 / 133    

    statements  0.25%      1 / 393    

    branches    0%         0 / 370    

    lines       0%         0 / 3189   



COVERAGE RESULT     0.16%      

==============================

FAILED

Tests: 8  Passed: 0  Failed: 0 Errors: 8 Ignored: 0 Time: 0.027



Tests ERROR under neko using summary client

------------------------------

PLATFORMS TESTED: 1, PASSED: 0, FAILED: 0, ERRORS: 1, TIME: 1.233

Massive Unit - Copyright 2017 Massive Interactive. Version src

   haxe -main TestMain -cp test -cp src -lib mlib -hl bin/test/core/hl_test.hl -lib mcover -D MCOVER --macro mcover.MCover.coverage([''],['src'],[''])



MUnit Results

------------------------------suiteIndex: 0, testSuites.length: 1



Class: massive.munit.AssertTest ......................... [98.33%]

Class: massive.munit.AssertionExceptionTest . [100%]

Class: massive.munit.MUnitExceptionTest .. [100%]

Class: massive.munit.TestClassHelperTest ... [70.51%]

Class: massive.munit.TestResultTest ... [100%]

Class: massive.munit.TestRunnerTest suiteIndex: 0, testSuites.length: 1

before executeTestCase

.after executeTestCase

before execute

suiteIndex: 0, testSuites.length: 1

.suiteIndex: 0, testSuites.length: 1

afte execute

before executeTestCase

after executeTestCase

before execute

suiteIndex: 0, testSuites.length: 1

afte execute

before executeTestCase

after executeTestCase

before execute

suiteIndex: 0, testSuites.length: 1

afte execute

suiteIndex: 0, testSuites.length: 1

before executeTestCase

after executeTestCase

before execute

suiteIndex: 0, testSuites.length: 1

afte execute

before executeTestCase

.after executeTestCase

before execute

suiteIndex: 0, testSuites.length: 1

.suiteIndex: 0, testSuites.length: 1

afte execute

before executeTestCase

.after executeTestCase

before execute

suiteIndex: 0, testSuites.length: 1

suiteIndex: 0, testSuites.length: 1

afte execute

before executeTestCase

after executeTestCase

before execute

suiteIndex: 0, testSuites.length: 1

afte execute

before executeTestCase

.after executeTestCase

before execute

suiteIndex: 0, testSuites.length: 1

 [86.81%]

Class: massive.munit.TestSuiteTest ... [81.82%]

Class: massive.munit.UnhandledExceptionTest . [81.25%]

Class: massive.munit.async.AsyncDelegateTest afte execute

before executeTestCase

.after executeTestCase

before execute

suiteIndex: 0, testSuites.length: 1

...afte execute

before executeTestCase

.after executeTestCase

before execute

suiteIndex: 0, testSuites.length: 1

afte execute

before executeTestCase

.after executeTestCase

before execute

suiteIndex: 0, testSuites.length: 1

 [78.38%]

Class: massive.munit.async.AsyncFactoryTest .afte execute

before executeTestCase

.after executeTestCase

before execute

suiteIndex: 0, testSuites.length: 1

 [100%]

Class: massive.munit.async.AsyncTimeoutExceptionTest . [100%]

Class: massive.munit.async.MissingAsyncDelegateExceptionTest . [100%]

Class: massive.munit.client.URLRequestTest . [75%]

Class: massive.munit.util.MathUtilTest .. [100%]

Class: massive.munit.util.TimerTest afte execute

before executeTestCase

.after executeTestCase

before execute

suiteIndex: 0, testSuites.length: 1

afte execute

before executeTestCase

.after executeTestCase

before execute

suiteIndex: 0, testSuites.length: 1

afte execute

before executeTestCase

.after executeTestCase

before execute

suiteIndex: 0, testSuites.length: 1

afte execute

before executeTestCase

.after executeTestCase

Kill active process...
before execute

suiteIndex: 0, testSuites.length: 1





------------------------------

COVERAGE REPORT

------------------------------

MISSING CODE BLOCKS:

    massive.munit.async.AsyncDelegate [86.49%]

        cancelTest (C:\projects\MUnit2017\src\massive\munit\async\AsyncDelegate.hx:117: chars 5-24) t

        responseHandler (C:\projects\MUnit2017\src\massive\munit\async\AsyncDelegate.hx:121: chars 5-13) t

        responseHandler (C:\projects\MUnit2017\src\massive\munit\async\AsyncDelegate.hx:123: chars 5-26) t

        responseHandler (C:\projects\MUnit2017\src\massive\munit\async\AsyncDelegate.hx:124: chars 16-30) t

        responseHandler (C:\projects\MUnit2017\src\massive\munit\async\AsyncDelegate.hx:126: chars 5-21) f



    massive.munit.client.AbstractTestResultClient [43.86%]

Done(1)
