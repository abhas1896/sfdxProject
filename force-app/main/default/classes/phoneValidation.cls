public class phoneValidation {
    
    
    public static void beforeInsertTrigger(List<account> triggerNew){
        
        pValidation(triggerNew);
    }
    
    public static void beforeUpdateTrigger(map<id,Account>NewmapAccounts, map<id,Account>oldmapAccounts){
        pValidation(NewmapAccounts.values());
    }
     
    public static void pValidation(List<account> lstAccounts){
        for(Account acc:lstAccounts){
            System.debug('value:' + acc);
            if(acc.Phone != null){
                integer phoneLength = acc.Phone.length();
            	if(phoneLength <8 || phoneLength>10){
                acc.addError('Number should be less than 10 or greater to 8 digit');
            }
           }
            
        }
    }
 
}