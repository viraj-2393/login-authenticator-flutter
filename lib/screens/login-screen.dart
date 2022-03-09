import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  static const routeName = '/login-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3F4072),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top:30),
        padding: const EdgeInsets.all(30),
        child: Column(
          children:  [
            Text('Hello Again!',style: TextStyle(fontSize: 30,color: Colors.white),),
            Text('Welcome back you\'ve been missed!',style: TextStyle(color: Colors.grey),),
            Spacer(),
            Form(
              child: Column(
                children: [
                  Container(
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: TextFormField(
                       decoration: InputDecoration(
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
                  SizedBox(height: 20,),
                  Container(
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
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
                  )

                ],
              ),
            )
          ],
        ),
      )
    );
  }
}