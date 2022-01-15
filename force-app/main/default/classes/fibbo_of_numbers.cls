public class fibbo_of_numbers {
    
    public void calculate(Integer numa){
        
        Integer a =0;
        Integer b = 1;
        Integer numb = numa;
        Integer sum;
        System.debug(a);
        System.debug(b);
        
        for(Integer i=0;i<=numb;i++){
            
            
            sum = a + b;
            System.debug(sum);           
            a = b;
            b = sum;
            
        }
        
    }

}