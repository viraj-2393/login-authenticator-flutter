import 'package:flutter/material.dart';
import './login-screen.dart';
class Splash extends StatelessWidget{
  static const routeName = '/';
  Widget _buttonBuilder(String text,Color buttonColor,Color textColor,){
    return Container(
      margin: const EdgeInsets.only(top:10),
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: buttonColor
      ),
      child: Text(text,style: TextStyle(color: textColor),textAlign: TextAlign.center,),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          color: Color(0xFF3F4072),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:30),
                padding: EdgeInsets.all(30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/images/splash-image.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:50),
                child: const  Text('MOVI',style: TextStyle(color: Colors.white,fontSize: 30),),
              ),

              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top:10),
                child: const Text('Find you perfect place for movies, tv shows and many more',
                  style: TextStyle(color: Colors.grey,),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: (){},
                child: _buttonBuilder('Get Started', Colors.deepOrange,Colors.white),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                },
                child: _buttonBuilder('Log in', Colors.white,Colors.black),
              ),

            ],
          ),
        ),

    );
  }
}