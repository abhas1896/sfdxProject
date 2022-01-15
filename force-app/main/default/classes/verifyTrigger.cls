public class verifyTrigger {
    
    public static void sampleMethod(List<Contact> contList){
        
        Set<String> setCont = new Set<String>();
        List<Contact> contL = new List<Contact>();
        Map<String,Contact> mapCont = new Map<String,Contact>();
        if(contList.size()>0){
            
            for(Contact cts:contList){
                
                setCont.add(cts.Name);
            }
            
            if(setCont.size()>0){
                
                contL = [Select Name from Contact where Name IN: setCont];
            }
            
            if(contL.size()>0){
                
                for(Contact ctc:contL){
                    
                    mapCont.put(ctc.Name,ctc);
                }
            }
            
            for(Contact conts:contList){
                
                if(mapCont.containsKey(conts.Name)){
                    
                    
                    conts.addError('a contact is already present');
                }
            }
        }
    }

}