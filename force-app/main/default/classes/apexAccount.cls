public class apexAccount {
    
    public static void showAccount(){
       
       Integer countCont = 0;
        Integer countOpp = 0;
        List<Account> acctList = [Select Id,Name from Account];
        List<Contact> contList = [Select Id from Contact];
        List<Opportunity> oppList = [Select Id from Opportunity];
        for(Account Acct : acctList){
            
            System.debug(Acct.Name);
            for(Contact con: contList){
                
                if(con.AccountId == Acct.Id){
                    
                    countCont++;
                }
                
            }
            for(Opportunity opp: oppList){
                
                    
                    if(opp.AccountId == Acct.Id){
                        
                        
                        countOpp++;
                    }
                
                
            }
             
            System.debug(countCont);
            System.debug(countOpp);
        }
        
    }

}