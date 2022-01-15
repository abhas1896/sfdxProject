public with sharing class newCont {
    public static List<Contact> getAllContacts() {
      return [SELECT Name FROM Contact];
    }
  }