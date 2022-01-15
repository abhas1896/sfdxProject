public with sharing class sampleApexController {
    
    @auraenabled
    public static List<Account> getActList(){
        
        List<Account> actList = new List<Account>();
        
        actList = [Select Name from Account LIMIT 10];
        
        return actList;
        
    }
}