global class batchPractice3 implements Database.Batchable<Sobject>,Database.Stateful{
    
    global integer count = 0;
    global Database.QueryLocator start(Database.BatchableContext bc){
       string str = 'Select Id,LeadSource from Lead';
       return Database.getQueryLocator(str);
               
    }
    global void execute(Database.BatchableContext bc,List<Lead> scope){
        List<Lead> ld = new List<Lead>();
        for(Lead ll : scope){
            
            ll.LeadSource = 'Dreamforce';
            ld.add(ll);
            count += 1;
        }
        try{
            update ld;
        }
        catch(exception e){
            System.debug(e);
        }
        
    }
    global void finish(Database.BatchableContext bc){
        
        System.debug('the total count is :' + count);
    }

}