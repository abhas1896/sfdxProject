public with sharing class OpportunityController {

    @AuraEnabled
    public static List<Opportunity> getOpp(){
        
        List<Opportunity> opportunities = [Select id,name from Opportunity];
        return opportunities;
    }
}