public class EmailContact {
    
    //before insert
    
    public static void changeEmailContact(List<Contact> triggerNew){
        
        for(Contact cts : triggerNew)
        {
            cts.Email = 'hello@world.com';
        }
    
    }

}