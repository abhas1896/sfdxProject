public class SampleEmail {
    
    public void emailMethod(){
        
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] setToAdd = new String[]{'srivastavaabhas5@gmail.com'};
        String[] setToCC = new String[]{'hs995301@gmail.com'};
        mail.setToAddresses(setToAdd);
        mail.setCcAddresses(setToCC);
        mail.setSubject('the individual mail');
        mail.setPlainTextBody('this is a new email');
        
        messaging.Email[] m2 = new messaging.Email[]{mail};
        Messaging.sendEmail(m2);    
            
            
    }

}