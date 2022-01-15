public class contHandler{
    
    public static void totalCount(List<Contact> newCont){
        
        Set<Id> newSet = new Set<Id>();
        List<Account> acctList = new List<Account>();
        List<Account> updateList = new List<Account>();
        if(newCont.size()>0){
            
            for(Contact cts:newCont){
                
                if(cts.AccountId != null){
                    
                    newSet.add(cts.AccountId);
                }
            }
        }
        
        if(newSet.size()>0){
            
            acctList = [Select Id,NOC__c,(Select Id from Contacts) from Account where Id IN: newSet];
        }
        
        if(acctList.size()>0){
            
            for(Account act:acctList){
                                 
                act.NOC__c = act.Contacts.size();
                updateList.add(act);
            }
        }
        update updateList;
    }
    
}