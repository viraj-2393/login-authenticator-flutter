import 'package:flutter/material.dart';
import '../widgets/signup-form-widget.dart';
class SignupScreen extends StatelessWidget{
  static const routeName = '/signup-screen';

  const SignupScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF3F4072),
        body:SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top:100),
            padding: const EdgeInsets.all(30),
            child: Column(
              children:  [
                const Text('Welcome to MOVI!',style: TextStyle(fontSize: 30,color: Colors.white),),
                const Text('Your one stop destination for entertainment',style: TextStyle(color: Colors.grey),),
                const SizedBox(height: 50,),
                SignupFormWidget()
              ],
            ),
          ),
        )
    );
  }
}