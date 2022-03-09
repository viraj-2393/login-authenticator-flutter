import 'package:flutter/material.dart';
import '../widgets/login-form-widget.dart';
class LoginScreen extends StatelessWidget{
  static const routeName = '/login-screen';

  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3F4072),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top:100),
        padding: const EdgeInsets.all(30),
        child: Column(
          children:  [
            const Text('Hello Again!',style: TextStyle(fontSize: 30,color: Colors.white),),
            const Text('Welcome back you\'ve been missed!',style: TextStyle(color: Colors.grey),),
            const SizedBox(height: 100,),
            LoginFormWidget()
          ],
        ),
      )
    );
  }
}