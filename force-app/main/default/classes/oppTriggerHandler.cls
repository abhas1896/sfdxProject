public class oppTriggerHandler {
    
    public static void beforeInsertTrigger(List<Opportunity> oppls){
        
        oppoValidation(oppls);
        
    }
    public static void beforeUpdateTrigger(map<id,Opportunity> opponewMap,map<id,Opportunity> oppooldMap){
        
        oppoValidation(opponewMap.values());
    }
    
    public static void oppoValidation(List<Opportunity> opps){
        
        for(Opportunity opp: opps){
            
            if(opp.StageName == 'Closed Won' && opp.OpportunityContactRoles.size()  == 0 ){
                opp.adderror('there is some error');
            }
        }
        
    }

}