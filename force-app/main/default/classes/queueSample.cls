public class queueSample implements System.Queueable {
    
    public void execute(System.QueueableContext context)
    {
        System.debug('this is the queueable apex');
        
        List<Account> accountInfo = new List<Account>([Select Id,Name from Account Limit 50]);
        System.debug('account information is :' + accountInfo);
    }
    
    
}