public with sharing class SimpleServerSideController {
    
    @AuraEnabled
    public static String serverEcho(string firstName){
        
        return('hello from the server '+firstName);
    }

}