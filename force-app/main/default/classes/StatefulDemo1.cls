global class StatefulDemo1 implements Database.Batchable<Sobject>, Database.Stateful {
    
    private Integer magicnum = 0;
    global Database.QueryLocator start(Database.BatchableContext bc){
        System.debug('this is start method');
        return Database.getQueryLocator('Select Id,Name from Account Limit 100');
    }
    
    global void execute(Database.BatchableContext bc,List<Account> scope){
        System.debug('this is execute method');
        for(integer i=1;i<10;i++){
            magicnum = magicnum + i;
        }
    }
    global void finish(Database.BatchableContext bc){
        
        System.debug('this is finish method');
        System.debug('the value is:'+ magicnum);
        
    }

}