public class mulOppClass {
    
    public static void afterInsertMethod(List<Account> triggernew){
        
        addOpportunity(triggernew);
    }

    public static void addOpportunity(List<Account> triggernew){
        
        List<Opportunity> oppo = new List<Opportunity>();
        for(Account acct:triggernew){
            
            if(acct.NumberOfEmployees >= 99){
                
                for(Integer i=0;i<10;i++){
                    
                    Opportunity opp = new Opportunity();
                    opp.AccountId = acct.Id;
                    opp.Name = 'NewCreatedOpportunity';
                    opp.StageName = 'Prospecting';
                    opp.CloseDate = Date.today();
                    oppo.add(opp);
                }
            }
            insert oppo;
        }
        
    }
}