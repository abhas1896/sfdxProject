public class LeadAccountClass {
    
    public static void CreationName(List<Lead> triggernew){
        
        List<Account> act = new List<Account>();
        for(Lead myLead : triggernew){
            
            Account acct = new Account();
            acct.Name = myLead.LastName;
            
            act.add(acct);
        }
        if(act.size() > 0){
            
            insert act;
        }
        
        
    }

}