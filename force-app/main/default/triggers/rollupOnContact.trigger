trigger rollupOnContact on Contact (after insert, after update, after delete) {
    
    
    if(trigger.isafter){
        
        if(trigger.isInsert){
            
            conts.Countcontacts(trigger.new,trigger.old,trigger.oldMap);
            
        }
        
    } 
    
    if(trigger.isafter){
        
        if(trigger.isUpdate){
            
            conts.Countcontacts(trigger.new,trigger.old,trigger.oldMap);
            
        }
        
    } 
    
        if(trigger.isafter){
        
        if(trigger.isDelete){
            
            conts.Countcontacts(trigger.new,trigger.old,trigger.oldMap);
            
        }
        
    } 
}