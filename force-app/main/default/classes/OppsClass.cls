public class OppsClass {
    
    public static void countOppsMethod(List<Opportunity> newOpps){
        
        Set<Id> setOpps = new Set<Id>();
        List<Account> actList = new List<Account>();
        List<Account> updateList = new List<Account>();
        for(Opportunity opps:newOpps){
            
            setOpps.add(opps.AccountId);
        }
        
        actList = [Select Id,Total_Opportunity_Count__c,(select Id from Opportunities) from Account where Id IN: setOpps];
        if(actList.size()>0){
            
            for(Account act:actList){
                
                List<Opportunity> opps = act.Opportunities;
                act.Total_Opportunity_Count__c = opps.size();
                updateList.add(act);
            }
        }
        update updateList;
    }

}