global class BatchDemo1 implements Database.Batchable<Sobject> {

    private integer valuea = 0;
    
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator('Select Id,Name from Account');
    }
    global void execute(Database.BatchableContext bc, List<Account> scope)
    {
        System.debug('this is execute method');
        for(integer i=0;i<=10;i++){
            valuea = i;
        }
    }
    
    global void finish(Database.BatchableContext bc)
    {
        System.debug('this is finish method');
        System.debug('sumup value is:' + valuea);
    }
}