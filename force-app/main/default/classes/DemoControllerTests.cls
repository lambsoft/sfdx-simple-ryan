@isTest
private class DemoControllerTests {
    @isTest static void passingTest() {    	
        DemoController demo = new DemoController();
        demo.doWork();
        demo.fakeMethod();
        System.assertEquals(demo.getAppVersion(), '1.1.0');
    }
}
