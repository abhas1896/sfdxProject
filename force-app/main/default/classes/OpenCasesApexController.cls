public with sharing class OpenCasesApexController {
      
    @AuraEnabled
    public static List<Case> getCasesDB(){
        
        List<Case> openCases = new List<Case>();
        openCases = [SELECT Id, Type, Status, Reason, Origin, IsClosed, OwnerId 
                     FROM Case where Origin = 'Email' 
                     AND OwnerId =: UserInfo.getUserId()];
        return openCases;
    }
}