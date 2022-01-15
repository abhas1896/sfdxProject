@isTest
public class AppleWatchTest {

    @isTest static void test_method_one(){
        
        Opportunity opps = new Opportunity();
        opps.Name = 'Benz Deal';
        opps.StageName = 'Prospecting';
        opps.CloseDate = Date.today();
        
        insert opps;
    }
}