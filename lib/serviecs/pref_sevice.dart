import 'dart:convert';

import 'package:prefdemo_63/model/account_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user_model.dart';


// shared preference class
class Pref{

  // for name
  static storeName(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
  }

  static Future<Object?> loadName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get("name");
  }

  static Future<bool> removeName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("name");
  }

  // for user
  static storeUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringUser  = jsonEncode(user);
    prefs.setString('user', stringUser);
  }

  static Future<User?> loadUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringUser = prefs.getString("user");
    if(stringUser == null || stringUser.isEmpty)  null ;

    Map<String,dynamic> map = jsonDecode(stringUser!);
    return User.fromJson(map);
  }

  static Future<bool> removeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("user");
  }
  // for account
  static storeAccount(Account account) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dynamic stringAccount  = jsonEncode(account);
    prefs.setString('account', stringAccount);
  }

  static Future<Account> loadAccount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dynamic stringAccount = prefs.getString("account");
    if(stringAccount == null || stringAccount.isEmpty)  null ;

    dynamic map = jsonDecode(stringAccount);
    return Account.fromJson(map);
  }

  static Future<bool> removeAccount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("account");
  }
}
// class Pref{
//   static void storeFun(String name)async{
//     SharedPreferences pref=await SharedPreferences.getInstance();
//     pref.setString('name', name);
//   }
//  static Future<String?> loadFun()async{
//     SharedPreferences pref=await SharedPreferences.getInstance();
//     return pref.getString('name');
//   }
//   static Future<bool> removeFun()async{
//     SharedPreferences pref=await SharedPreferences.getInstance();
//     return pref.remove('name');
//   }
//
//   static storeUser(User user)async{
//     SharedPreferences pref=await SharedPreferences.getInstance();
//     String? stringUser= await jsonEncode(user);
//     pref.setString('stringUser', stringUser);
//   }
//   static Future<User?> loadUser()async{
//     SharedPreferences pref= await SharedPreferences.getInstance();
//     String? stringUser=pref.getString('stringUser');
//     if(stringUser==null||stringUser.isEmpty){
//       return null;
//     }
//     Map<String,dynamic> map=jsonDecode(stringUser!);
//     return User.fromJson(map!);
//   }
//   static Future<bool> removeUser()async{
//     SharedPreferences pref=await SharedPreferences.getInstance();
//     return pref.remove('user');
//   }
// }