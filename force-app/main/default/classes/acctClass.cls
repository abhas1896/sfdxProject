public class acctClass {
    
    public static void duptrigger(List<Account> acts){
                
        List<Account> newAct = [Select Name from Account];
       // System.debug(newAct);
        
        for(Account ac: acts){
            
            for(Account acc : newAct){
                
                if(ac.Name == acc.Name){
                    
                    acc.addError('Duplicate Account');
                }
            }
            
        }
        
    }

}