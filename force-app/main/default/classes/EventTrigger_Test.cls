@isTest
private class EventTrigger_Test {
    
    @isTest static void test_countEvent() {
        
        List<Account> accountList = new List<Account>();
        List<Event> eventList = new List<Event>();
                
        Account objAccount = new Account(Name = 'Test');
        accountList.add(objAccount);
        
        Account objAccount1 = new Account(Name = 'Test 1');
        accountList.add(objAccount1);
                
        insert accountList;
        
        Test.startTest();
        
        Event objEvent = new Event(Subject = 'Email', StartDateTime=system.today(),EndDateTime=system.today()+5,WhatId = objAccount.Id);
        eventList.add(objEvent);
        
        Event objEvent1 = new Event(Subject = 'Meeting',StartDateTime=system.today(),EndDateTime=system.today()+5,WhatId = objAccount.Id);
        eventList.add(objEvent1);
        
        insert eventList;
        
        Account accountRecord = [Select Id, EventCount__c From Account Where Id =: objAccount.Id];
        System.assertEquals(2, accountRecord.EventCount__c);
        
        objEvent1.WhatId = objAccount1.Id;
        update objEvent1;
        
        Account accountRecord1 = [Select Id, EventCount__c From Account Where Id =: objAccount.Id];
        System.assertEquals(1, accountRecord1.EventCount__c );
        
        delete objEvent1;
        
        Account accountRecord2 = [Select Id, EventCount__c From Account Where Id =: objAccount1.Id];
        System.assertEquals(0, accountRecord2.EventCount__c );
                
        Test.stopTest();    
    }   
}