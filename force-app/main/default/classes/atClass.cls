public class atClass {
    
    public static void errorTrig(List<Account> newAct){
        
        Set<String> newSet = new Set<String>();
        List<Account> actList = new List<Account>();
        Map<String,Account> mapAcc = new Map<String,Account>();
        
        if(newAct.size()>0){
            for(Account act:newAct){
                
                newSet.add(act.Name);
            }
        }
        
        if(newSet.size()>0){
            
            actList = [Select Name from Account where Name IN: newSet];
        }
        
        if(actList.size()>0){
            
            for(Account accts:actList){
                
                 mapAcc.put(accts.Name,accts);
            }
           
        }
        for(Account acta:newAct){
            
            if(mapAcc.containsKey(acta.Name)){
                
                acta.addError('duplicate error occured');
            }
        }
        
    }

}