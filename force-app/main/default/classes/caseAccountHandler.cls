public class caseAccountHandler {

    public static void afterInsertTrigger(List<Case> caseList){
        
        newCaseCreation(caseList);
    }
    public static void afterUpdateTrigger(map<id,Case> newMapCase, map<id,Case> oldMapCase){
        
        newcaseCreation(newMapCase.values());
    }
    
    public static void newCaseCreation(List<Case> cslist){
       
       
        List<Case_Solution__c> cc = new List<Case_Solution__c>();
        for(Case cse:cslist){
            System.debug('abc'+ cse);
            if(cse.Status == 'Working' && cse.Accepted_Solution__c == true){
                Case_Solution__c ccd = new Case_Solution__c();
                ccd.Case__c = cse.Id; 
                System.debug('xyz:'+ccd.Id);
                ccd.Name = 'Case sol';
                
                cc.add(ccd);
                System.debug('ans is'+ cc);
            }
        }
        
        insert cc;
        
    }
}