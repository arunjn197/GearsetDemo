public class AccountCtrl {
    public static List<Account> getAccounts(){
        System.debug('Hello');
        return [SELECT Id,Name FROM Account];
    }
    public static Map<Id, Account> getAccountsWithId(){
        return new Map<Id, Account>([SELECT id, Name FROM Account]);
    }
}
