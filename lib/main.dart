import 'package:flutter/material.dart';
import 'screens/splash.dart';
import 'screens/login-screen.dart';
import 'screens/signup-screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/':(ctx) => Splash(),
        LoginScreen.routeName: (ctx) => const LoginScreen(),
        SignupScreen.routeName:(ctx) => const SignupScreen(),
      },

    );
  }
}

