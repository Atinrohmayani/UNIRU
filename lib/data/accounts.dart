

import '/services/accounts_db.dart';

class Account {
  String? uid;
  String? firstName;
  String? lastName;
  String? email;
  String? type;
  String userDp;

  Account({this.uid, this.firstName, this.lastName, this.email, this.type, this.userDp = ""});
}

List accountList = [];


// getting the list
Future<bool> getListAccount() async {
  accountList = [];

  List? jsonList = await AccountsDB().createAccountDataList();
  jsonList!.forEach((element) {

    var data = element.data();

    accountList.add(Account(
      uid: data["uid"],
      firstName: data["firstname"],
      lastName: data["lastname"],
      email: data["email"],
      type: data["type"],
      userDp: "Assets/Images/Dp/default.png"
    ));
  });

  print("\t\t\t\tGot Account list");
  return true;

}

// returns whether the account exists
bool accountExists(uid) {
  var data = accountList.firstWhere((element) => element.uid == uid, orElse: () => null);
  return data!= null? true:false;
}


// returns the account of the user
Account? getAccount(uid) {
  var data = accountList.firstWhere((element) => element.uid == uid, orElse: () => null);
  return data;
}