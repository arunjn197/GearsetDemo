public class AccountCtrl {
    public static List<Account> getAccounts(){
        return [SELECT Id,Name FROM Account]; 
    }
    public static Map<Id, Account> getAccountsWithId(){
        return new Map<Id, Account>([SELECT id, Name FROM Account]);
    }
    public static Map<Id, List<Contact>> getContactByAccountId(){
        Map<Id, List<Contact>> accId2Contacts = new Map<Id, List<Contact>>();
        for(Account acc : [SELECT Id, (SELECT Id, Name FROM Contacts) FROM Account]){
            accId2Contacts.put(acc.Id, acc.Contacts);
        }

        return accId2Contacts;
    }
}
