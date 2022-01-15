public class EventTriggerHandler {
    public static void afterInsert(List<Event> newRecordList){
           countEventMethod(newRecordList);
    }
    public static void afterUpdate(Map<id,Event> newMap,Map<id,Event> oldMap){         
           countEventMethod(oldMap.values());         
    }
    public static void afterDelete(List<Event> oldRecordList){
           countEventMethod(oldRecordList);
    }       
    public static void countEventMethod(List<Event> eventList){
        
        set<Id> accountId = new set<Id>();
        List<Account> updateList = new List<Account>();
                                  
            for(Event rec:eventList){                    
                  if(rec.WhatId != null)                     
                  accountId.add(rec.WhatId);                       
             }      
            for(Account accts: [Select Id,EventCount__c,(SELECT Id,ownerId,subject FROM Events) FROM Account
                                WHERE Id
                                IN:accountId]){                        
                         List<Event> eve = accts.Events;                       
                         accts.EventCount__c = eve.size();
                         updateList.add(accts);                     
            }  
            try{
                if(!updateList.isEmpty())  
                  update updateList;
           }
        
           catch(exception e){
              System.debug('Message'+e.getMessage());            
           }       
    }    
}