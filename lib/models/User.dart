import 'package:flutter/material.dart';

class User extends ChangeNotifier{
  final String name;
  final String phone;
  final String email;
  final String password;
  final String profession;

  User({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.profession
  });
}