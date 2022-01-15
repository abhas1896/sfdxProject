public class leadCreationApexController {
    
    @auraenabled
    public static Id createLeadRecord(Lead leadObj){
        
        insert leadObj;
        return leadObj.Id;
        
    }
    
    
    @auraenabled 
    public static Map<String, String> getCarsAvailable(){
        Map<String, String> options = new Map<String, String>();
        
        Schema.DescribeFieldResult fieldResult = Lead.Cars_Available__c.getDescribe();
        
        List<Schema.PicklistEntry> pList = fieldResult.getPicklistValues();
        for (Schema.PicklistEntry p: pList) {
            
            options.put(p.getValue(), p.getLabel());
        }
        return options;
    }
    
}