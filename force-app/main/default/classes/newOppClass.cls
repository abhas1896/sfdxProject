public class newOppClass {
    
    public static void oppsMethod(list<Opportunity> listOpps){
       
        Set<Id> setOpps = new Set<Id>();
        List<Account> actList = new List<Account>();
        List<Account> updateList = new List<Account>();
        if(listOpps.size()>0){
            
            for(Opportunity opp:listOpps){
                
                setOpps.add(opp.AccountId);
            }
        }
        
        if(setOpps.size()>0){
            
            actList = [Select Id,NOP__c,(Select Id from Opportunities) from Account where Id IN: setOpps];
        }
        
        if(actList.size()>0){
            
            for(Account acct:actList){
                
                List<Opportunity> oppAct = acct.Opportunities;
                
                acct.NOP__c = oppAct.size();
                updateList.add(acct);
                
            }
        }
        update updateList;
    }

}