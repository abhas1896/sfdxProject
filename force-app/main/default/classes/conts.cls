public class conts {
    public static void Countcontacts(List<contact> newcontact,List<contact> oldcontact,Map<Id,Contact> oldContactMap){
     
        set<id> accids= new set<id>();
                try{
        if(newcontact !=null){
            for(Contact c:newcontact){
                if(c.AccountId!=null){
                accids.add(c.accountid);
                }
            }      
       }
       /*if(newcontact !=null){
            for(Contact c:newcontact){
                
                if(c.AccountId!=null && c.AccountId != oldContactMap.get(c.Id).AccountId){
                accids.add(c.accountid);
                }
            }      
       }*/
         if(oldcontact !=null){
            for(Contact c:oldcontact){
                
                if(c.AccountId!=null){
                accids.add(c.accountid);
                }
            }      
       }

                    List<Account> acc = [Select id, NOC__c,(Select id from Contacts) from Account where id IN: accids];
        if(acc!=null){
        for(Account accValue:acc){
            accValue.NOC__c = accValue.Contacts.size();
        } 
        }
        if(!acc.isempty()){
        update acc;
        }
        }
        catch(exception e){
            System.debug('Get Message'+e.getMessage());
        }
    } 
}