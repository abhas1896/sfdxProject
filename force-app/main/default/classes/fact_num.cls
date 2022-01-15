public class fact_num {
    
    public void totalfact(Integer num){
        
        Integer fact = 1;
        Integer count = num;
        
        for(Integer i =num;i>0;i--){
            
            fact = fact *i;
            
        }
        System.debug(fact);
    }

}