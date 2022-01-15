public class checkSecretInformationClass {
    
    public static void chkMethod(List<Case> triggernew){
        
        Set<String> sensitive = new Set<String>();
        sensitive.add('Credit Card');
        sensitive.add('Social Security');
        sensitive.add('SSN');
        sensitive.add('Passport');
        sensitive.add('Bodyweight');
        
        List<Case> containSecret = new List<Case>();
        for(Case myCase : triggernew){
            for(String keyword : sensitive){
                
                if(myCase.description != null && myCase.description.containsIgnoreCase(keyword)){
                    containSecret.add(myCase);
                    break;
                }
            }
        }
        List<Case> casesToCreate = new List<Case>();
        for(Case ContainsSecret : containSecret){
            
            Case childCase = new Case();
            childCase.subject = 'Warning Parent may contain sensitive keyword';
            childCase.ParentId = ContainsSecret.Id;
            childCase.IsEscalated = true;
            childCase.Priority = 'High';
            childCase.Description = ContainsSecret.Description;
            casesToCreate.add(childCase);
           
        }
        insert casesToCreate;
    }

}