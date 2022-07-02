import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../model/user_model.dart';

class Pref{
  static void storeFun(String name)async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    pref.setString('name', name);
  }
 static Future<String?> loadFun()async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    return pref.getString('name');
  }
  static Future<bool> removeFun()async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    return pref.remove('name');
  }

  static void storeUser(User user)async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    String stringUser=jsonEncode(user);
    pref.setString('user', stringUser);
  }
  static Future<User?> loadUser()async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    String? stringUser=pref.getString('user');
    if(stringUser==null||stringUser.isEmpty){
      return null;

    }
    Map<String,dynamic> map=jsonDecode(stringUser);
    return User.fromJson(map);
  }
  static Future<bool> removeUser()async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    return pref.remove('user');
  }
}