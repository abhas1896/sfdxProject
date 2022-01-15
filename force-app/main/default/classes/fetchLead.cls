public with sharing class fetchLead {
    public static List<Lead> getAllLeads() {

        return [Select Name from Lead];

    }
}