global class LeadStatusUpdateSchedulableClass implements Schedulable {
    global void execute(SchedulableContext ctx) {
        
        LeadStatusUpdateBatchClass lsd = new LeadStatusUpdateBatchClass();
        Database.executeBatch(lsd);
    }
}