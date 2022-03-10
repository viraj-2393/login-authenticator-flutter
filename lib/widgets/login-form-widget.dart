import 'package:flutter/material.dart';
import '../screens/movie-screen.dart';
class LoginFormWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LoginFormWidgetState();
  }
}

class _LoginFormWidgetState extends State<LoginFormWidget>{
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Name...',
                  prefixIcon: Icon(Icons.person,color: Colors.grey,)
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'Please provide a name';
                }
                else{
                  return null;
                }
              },
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password...',
                  prefixIcon: Icon(Icons.password,color: Colors.grey,)
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'Please provide password';
                }
                else{
                  return null;
                }
              },
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(MovieScreen.routeName);
            },
            child: Container(
              width: 150,
              margin: const EdgeInsets.only(top:30),
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepOrange,
              ),
              child: const Text('Log in',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
            ),
          )


        ],
      ),
    );
  }
}