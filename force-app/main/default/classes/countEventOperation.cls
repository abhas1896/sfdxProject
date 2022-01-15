public class countEventOperation {
    public static void insertEventCount(List<Event> newEventList) {
        Set<Id> accountIds = new Set<Id>();
        for(Event eventRecord:newEventList){
            if(eventRecord.WhatId != null){
                accountIds.add(eventRecord.AccountId);
            }
        }
        if(!accountIds.isEmpty()){
            List<Account> accList = [SELECT Id, EventCount__c, (SELECT Id FROM Events) 
                                     FROM Account WHERE Id IN : accountIds];
            if(!accList.isEmpty()){
                List<Account> updateAccList = new List<Account>();
                for(Account acc:accList){
                      acc.EventCount__c = acc.Events.size();
                    	updateAccList.add(acc);
                }
                if(!updateAccList.isEmpty()){
                    update updateAccList;
                }
            }
        }
    }
    public static void updateEventCount(List<Event> newEventList,Map<Id,Event> oldEventMap) {
        Set<Id> accountIds = new Set<Id>();
        for(Event eventRecord:newEventList){
            if(eventRecord.WhatId != null && eventRecord.WhatId != oldEventMap.get(eventRecord.Id).WhatId){
                accountIds.add(eventRecord.AccountId);
            }
        }
        if(!accountIds.isEmpty()){
            List<Account> accList = [SELECT Id, EventCount__c, (SELECT Id FROM Events) 
                                     FROM Account WHERE Id IN : accountIds];
            if(!accList.isEmpty()){
                List<Account> updateAccList = new List<Account>();
                for(Account acc:accList){
                        acc.EventCount__c = acc.Events.size();
                    	updateAccList.add(acc);
                }
                if(!updateAccList.isEmpty()){
                    update updateAccList;
                }
            }
        }
    }
    public static void deleteEventCount(List<Event> newEventList,Map<Id,Event> oldEventMap) {
        Set<Id> accountIds = new Set<Id>();
        for(Event eventRecord:newEventList){
            if(oldEventMap.get(eventRecord.Id).WhatId != null && eventRecord.WhatId == null){
                accountIds.add(eventRecord.AccountId);
            }
        }
        if(!accountIds.isEmpty()){
            List<Account> accList = [SELECT Id, EventCount__c, (SELECT Id FROM Events) 
                                     FROM Account WHERE Id IN : accountIds];
            if(!accList.isEmpty()){
                List<Account> updateAccList = new List<Account>();
                for(Account acc:accList){
                        acc.EventCount__c = acc.Events.size();
                        updateAccList.add(acc);
                }
                if(!updateAccList.isEmpty()){
                    update updateAccList;
                }
            }
        }
    }
}