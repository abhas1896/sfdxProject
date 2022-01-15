public class count_Cont_Opps {
    
    public void countAll(){
        
        
        List<Account> actList = new List<Account>();
        
        actList = [Select Id,NOC__c,NOP__c,(Select Id from Contacts),(Select Id,RecordType.Name from Opportunities) from Account];
        
        if(actList.size()>0){
            
            for(Account act: actList){
                
                List<Contact> cts = act.Contacts;
                List<Opportunity> opp = act.Opportunities;
                System.debug(act);
                
                System.debug(act.Contacts.size());
                for(Contact ctc:cts)
                {
                    System.debug(ctc);
                }
                System.debug(act.Opportunities.size()); 
                for(Opportunity opps:opp){
                    
                    System.debug(opps);
                }
            }
        }
                  
    }

}