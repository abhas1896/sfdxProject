public class MyControllerExtension {
    
    private final Account acct;
    
    //the extension constructor initializes the private member variable
    //acct by using the getRecord from the standard controller.
   public MyControllerExtension(ApexPages.StandardController stdController)
   {
       this.acct = (Account)stdcontroller.getRecord();
   }
    
    public String getGreeting()
    {
        return 'Hello' + acct.Name + '(' + acct.Id + ')' ;
    }
}