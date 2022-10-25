
import 'package:flutter/cupertino.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../model/user_model.dart';


class UserViewModel with ChangeNotifier{

  Future<bool> saveUser(UserModel user)async{

    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('token', user.token.toString());
    sp.setString('expiry', user.expiry.toString());
    notifyListeners();
    return true ;
  }

  Future<UserModel> getUser()async{

    final SharedPreferences sp = await SharedPreferences.getInstance();
    final String? token = sp.getString('token');
    final String? expiry = sp.getString('expiry');


    return UserModel(
      token: token.toString(),
      expiry: expiry.toString()
    );
  }

  Future<bool> remove()async{

    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.remove('token');
    sp.remove('expiry');
    return true;

  }
}