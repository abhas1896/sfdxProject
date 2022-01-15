global class batchPractice2 implements Database.Batchable<Sobject>,Database.Stateful {
    
    
    global Database.QueryLocator start(Database.BatchableContext bc){
     
        String str = 'Select Id,Name,PipelineAmount__c,(Select Id,Amount from Opportunities) from Account where CreatedDate = LAST_N_DAYS:1';
        return Database.getQueryLocator(str);
    }
    
    global void execute(Database.BatchableContext bc,List<Account> addTheAmount){
        Decimal sum = 0;
        List<Account> upacc = new List<Account>();
        for(Account acc : addTheAmount){
            
            for(Opportunity opp: acc.Opportunities){
            
               sum += opp.Amount; 
        }
         acc.PipelineAmount__c = sum;
         upacc.add(acc);   
        }
        
        try{
            update upacc;
        }
        catch(Exception e){
            
            System.debug(e);
        }
    }
    global void finish(Database.BatchableContext bc){
        
        System.debug('the only way to get better is to keep on practicing');
    }

}