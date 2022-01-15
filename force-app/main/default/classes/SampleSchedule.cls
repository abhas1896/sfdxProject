global class SampleSchedule implements Schedulable{
    
    
    global void execute(SchedulableContext sc){
        
        System.debug('this is a schedulable class');
        
        //BatchDemo1 bc = new BatchDemo();
        //Database.executeBatch(bc);
    }
}