import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/splash.dart';
import './screens/login-screen.dart';
import './screens/signup-screen.dart';
import './providers/MovieData.dart';
import './screens/movie-screen.dart';
import './screens/company_info.dart';
import './providers/UserData.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (ctx) => MovieData()),
      ChangeNotifierProvider(create: (ctx) => UserData())
    ],
    child:MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/':(ctx) => Splash(),
        LoginScreen.routeName: (ctx) => const LoginScreen(),
        SignupScreen.routeName:(ctx) => const SignupScreen(),
        MovieScreen.routeName: (ctx) => MovieScreen(),
        CompanyInfo.routeName: (ctx) => CompanyInfo()
      },

    ),
    );
  }
}

