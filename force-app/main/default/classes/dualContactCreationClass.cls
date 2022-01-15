public class dualContactCreationClass {
    
    public static void beforeInsertMethod(List<Account> triggernew){
        
        creationOfContact(triggernew);
    }
    
    
    public static void creationOfContact(List<Account> triggernew){
        List<Contact> collectContact = new List<Contact>();
        for(Account acct : triggernew)
        {
            for(Integer i=0;i<2;i++){
                Contact myContact = new Contact();
                myContact.AccountId = acct.Id;
                myContact.LastName = 'Kisame';
                myContact.Title = 'Nanochip';
                
                collectContact.add(myContact);
                System.debug(collectContact);
            }
            insert collectContact;
        }
        
    }

}