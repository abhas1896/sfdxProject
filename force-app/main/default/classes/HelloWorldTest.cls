@isTest
public class HelloWorldTest {
    
    @isTest static void test_method_one(){
        //test code 
        
        Lead myLead = new Lead();
        myLead.FirstName = 'Phil';
        myLead.LastName = 'Knight';
        myLead.Company  = 'Nike';
        insert myLead;
        
        myLead.Company = 'Adidas';
        update myLead;
    }

}