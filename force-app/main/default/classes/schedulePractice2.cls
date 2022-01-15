global class schedulePractice2 implements Schedulable{
    
    global void execute(SchedulableContext sc){
        
        batchPractice2 bt = new batchPractice2();
        Database.executeBatch(bt, 100);
    }

}