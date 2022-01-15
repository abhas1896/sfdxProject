public class accRecords {
    
    public List<Account> accountList {get;set;}
    //if we do not want to change the data before setting into database and getting from database then use get and set in this way.
     
    /*public List<Account> getAccountList(){
        
        return accountList;
    }
    
    public void setAccountList(){
        
        this.accountList = acctList;
    }*/
    
    //use extended method of getter and setter when you need to change the values before changing into database.
    
    public accRecords(){
        
        accountList = [Select Id,name,CreatedDate from Account Limit 20];
    }
   
}