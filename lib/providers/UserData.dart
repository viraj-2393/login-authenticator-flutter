import 'package:flutter/material.dart';
import '../models/User.dart';
class UserData with ChangeNotifier{
  late User user = User(name:'',phone:'',email: '',password: '',profession: '');
  String getName(){
    return user.name;
  }
  String getPassword(){
    return user.password;
  }
  void registerUser(String name,String email,String phone,String password,String profession){
    user = User(
      name: name,
      email: email,
      phone: phone,
      password: password,
      profession: profession
    );
    notifyListeners();
  }

}