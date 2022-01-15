@isTest
public class LeadStatusUpdateBatchClassTest {
    
    
    static testmethod void testMethod1(){
        
        List<Lead> sampleLead = new List<Lead>();
        for(Integer i=0;i<200;i++){
            
            Lead ld = new Lead();
            ld.LastName = 'Test'+i;
            ld.Email = 'testlead@gmail.com';
            ld.Company = 'TestCompany'+i;
            ld.Status = 'Open - Contacted';
            
            sampleLead.add(ld);
        }
        
        insert sampleLead;
        
        
        Test.startTest();
        
        LeadStatusUpdateBatchClass obj = new LeadStatusUpdatebatchClass();
        
        Database.QueryLocator ql = obj.start(null);
        obj.execute(null,sampleLead);
        obj.Finish(null);
        
              
        Test.stopTest();
    }
    
    
}