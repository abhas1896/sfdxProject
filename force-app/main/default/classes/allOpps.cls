public with sharing class allOpps {
    public static List<Opportunity> getAllOpportunity() {
        return [SELECT Name FROM Opportunity];
      }
}