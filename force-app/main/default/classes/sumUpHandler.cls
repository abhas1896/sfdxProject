public class sumUpHandler {
    
    public static void afterInsertTrigger(List<Contact> triggernew){
        
        sumUpTheChild(triggernew);
    }
    
    public static void afterUpdateTrigger(map<id,contact>newMapContact,map<id,contact>oldmapContact){
        
        sumUpTheChild(newmapContact.values());
    }
    
    public static void sumUpTheChild(List<Contact> clsCont)
    {
         Set<Id> idList = new Set<Id>();
        List<Account> upacct = new List<Account>();
        Set<Account> newact = new Set<Account>();
        for(Contact con : clsCont){
            idList.add(con.AccountId);
        }
        
        List<Account> accto = [Select Id,RollUp_Amount_X__c,RollUp_Amount_Y__c,RollUp_Amount__c,(Select Id,Amount_X__c,Amount_Y__c,Typeo__c from Contacts)
               from Account where Id in:idList];
        for(Account acct: accto){
            System.debug('abc'+ acct);
            decimal xamount = 0.0;
            decimal yamount = 0.0;
            
            for(Contact con:acct.Contacts){
                System.debug('ac'+ con);
                if(con.Typeo__c == 'Positive'){
                    
                	xamount += con.Amount_X__c;
                	acct.RollUp_Amount_X__c = xamount;
            }
                else{
                    yamount += con.Amount_Y__c;
                    acct.RollUp_Amount_Y__c = yamount;
                }
               decimal totalsum = xamount + yamount;
               acct.RollUp_Amount__c = totalsum;
              
                
            }
            newact.add(acct);
        }
        upacct.addAll(newact);
        Update upacct;
        
    }

}