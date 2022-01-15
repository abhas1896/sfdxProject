global class LeadStatusUpdateBatchClass implements Database.Batchable<sObject>{
 
    global Database.QueryLocator start(Database.BatchableContext BC){
        
       
        String query = 'Select Name,Status,Industry,Lead_Max_Conversion_Date__c from Lead where Lead_Max_Conversion_Date__c = TODAY';
        
        return Database.getQueryLocator(query);
        
    }
    
    global void execute(Database.BatchableContext BC, List<Lead> scope){
        List<Lead> updateStatus = new List<Lead>();
        for(Lead ld:scope){
            
             ld.Status = 'Closed - Not Converted';
             updateStatus.add(ld);
                            
        }                 
        update updateStatus;        
    }
    
    global void finish(Database.BatchableContext BC){
        
    }
    
}