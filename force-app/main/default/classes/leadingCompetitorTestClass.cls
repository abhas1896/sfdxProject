@isTest
public class leadingCompetitorTestClass {

    @isTest static void test_method_one(){
        
        Opportunity opps = new Opportunity();
        opps.Name = 'Majin Boo';
        opps.CloseDate = Date.today();
        opps.StageName = 'Prospecting';
        
        opps.Competitor_price_1__c = 5000;
        opps.Competitor_price_2__c = 10000;
        opps.Competitor_price_3__c = 15000;
        
        opps.Competitor_1__c = 'Amazon';
        opps.Competitor_2__c = 'Google';
        opps.Competitor_3__c = 'Microsoft';
        
        insert opps;
        System.debug(opps.Name);
    }
}