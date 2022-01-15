public class rev_num {

    public void totalrev(Integer numa){
        
        Integer numb = numa;
        Integer rev = 0;
        Integer rem = 0;       
        while(numb != 0){
            
            rem = math.mod(numb,10);
            rev = rev*10 + rem;
            numb = numb/10;
        }
        System.debug(rev);
    }
    
}