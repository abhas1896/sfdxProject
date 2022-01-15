public class accountPractice {
    
    
    public void assignPart1(){
        
        Account acc = new Account(Name='Demons Account');
    	insert acc;
    
    	List<Contact> cts = new List<Contact>();
    
    	for(integer i=0;i<5;i++){
        
        Contact ccd = new Contact(firstName = 'Elon',LastName = 'Musk'+i,AccountId = acc.Id);
        
        cts.add(ccd);
    }
    
     insert cts;
        
    }
    
    public void fetchLatestContact(){
        
        List<Contact> cont = [select Id,firstName,lastName from Contact where CreatedDate = TODAY];
        for(Contact ctt : cont){
            System.debug(ctt);
        }
    }
    
    public void childToParent(){
        
        List<Contact> cls = [Select Id,firstName,lastName,Account.Name,Account.type from Contact];
        for(Contact cc : cls){
            System.debug(cc.FirstName);
            System.debug(cc.Account.Name);
        }
    }
    
    public void parentToChild(){
        
        List<Account> ats = [select Id,Name,(Select Id,firstName,lastName from Contacts) from Account];
        for(Account acc : ats){
            System.debug(acc.Name);
            for(Contact cc : acc.Contacts){
                System.debug(cc);
            }
        }
    }
    
}