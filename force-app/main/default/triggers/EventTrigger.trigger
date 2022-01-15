// Trigger to count total number of events associated to an account
trigger EventTrigger on Event (after insert,after update,after delete) {
    
    if(Trigger.isAfter) {
        if(Trigger.isInsert) {
            EventTriggerHandler.afterInsert(trigger.new);
        }
        if(Trigger.isUpdate) {           
             EventTriggerHandler.afterUpdate(trigger.newMap,trigger.oldMap);               
        }
        if(Trigger.isDelete) {
             EventTriggerHandler.afterDelete(trigger.old);
        }
    }
    
}