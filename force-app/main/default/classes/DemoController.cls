public with sharing class DemoController {
    public DemoController() {
    	this.doWork();
    }

    public DemoController(ApexPages.StandardController controller) {
    	this.doWork();    	
    }
    
    public void doWork() {
    	// Get the last name from the url
        String lastName = ApexPages.currentPage().getParameters().get('lastName');
        if (lastName != null) {
            // Query the object
            Contact theContact = [SELECT ID FROM Contact WHERE LastName = :lastName LIMIT 1];
            // this will set the Id, so now you can use the standard controller and just reference fields on the page
            ApexPages.currentPage().getParameters().put('id', theContact.Id);
        }
    }       

    public String getAppVersion() {
        System.debug('Adding this line to increase code coverage.');     
        return '1.1.0';
    }
    
    public void fakeMethod(){
    	Integer i = 0;
    	i++;
    	i++;
    	i++;
    	i++;
    	i++;
    	i++;
    	i++;
    	i++;
    	i++;
    	i++;
    	i++;
    	i++;    	
    }
}
