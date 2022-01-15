//writing a batch job where if enddate is equal to today,then change the value of checkbox to false.

global class batchPractice1 implements Database.Batchable<Sobject>,Database.Stateful{
    
    Date presentDate = System.today();
    global Database.QueryLocator start(Database.BatchableContext bc){
        
        
        String str = 'Select Id,EndDate__c,Activechk__c from Account where Activechk__c=true';
        return Database.getQueryLocator(str);
        
    }
    global void execute(Database.BatchableContext bc, List<Account> changeTheDate){
        
        List<Account> ats = new List<Account>();
        for(Account acc : changeTheDate)
        {
            Date presentDate = System.today();
            if(presentDate == acc.EndDate__c){
                
                acc.Activechk__c = false;
                ats.add(acc);
            }            
        }
        try{
            update ats;
        }
        catch(Exception e){
            System.debug(e);
        }
        
    }
    global void finish(Database.BatchableContext bc){
        
        System.debug('it is done');
    }
}