public class oppsCountClass {
     
    public static void rollUpSum(List<Opportunity> newOpps){
        
        Set<Id> oppsSet = new Set<Id>();
        List<Account> newAccts = new List<Account>();
        Map<Id,Opportunity> mapOpps = new Map<Id,Opportunity>();
        List<Account> updateList = new List<Account>();
        for(Opportunity opps:newOpps){
            
            oppsSet.add(opps.AccountId);
            
        }
        
        if(oppsSet.size()>0){
            
            newAccts = [Select Id,OpportunitySum__c from Account where Id IN: oppsSet];
        }
        for(Opportunity oppor:newOpps){
            
            mapOpps.put(oppor.AccountId,oppor);
        }
        
        for(Account accou:newAccts){
            
            for(Id key:mapOpps.keySet()){
                
                 if(mapOpps.size() >0 && mapOpps.containsKey(accou.Id)){
                
                accou.OpportunitySum__c += mapOpps.get(accou.Id).Amount;
            }
            	 updateList.add(accou);               
            }
           
           
        }
        update updateList;
    }

}