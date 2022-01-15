public class futureSample {
    
    public void futureCallouts(){
        
        futureMethod1();
        futureMethod2();
        
    }
    
    @future 
    public static void futureMethod1(){
        
        System.debug('this is the first future method!!!');
    }
    
    @future
    public static void futureMethod2(){
        
        System.debug('this is the second future method!!!');
    }

}