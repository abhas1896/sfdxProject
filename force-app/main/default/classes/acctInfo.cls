public with sharing class acctInfo {
   
   public static List<Account> getAllAccountInfo(){

      return [Select Name from Account];


   }
}