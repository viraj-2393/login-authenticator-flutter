import 'package:flutter/material.dart';
import '../screens/movie-screen.dart';
import '../providers/UserData.dart';
import 'package:provider/provider.dart';
class LoginFormWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LoginFormWidgetState();
  }
}

class _LoginFormWidgetState extends State<LoginFormWidget>{
  final _form = GlobalKey<FormState>();
  String name = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Form(
      key:_form,
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
              onSaved: (value){
                  name = value.toString();
               },
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
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password...',
                  prefixIcon: Icon(Icons.password,color: Colors.grey,)
              ),
              onSaved: (value){
                password = value.toString();
              },
              validator: (value){
                if(value!.isEmpty || value.length < 6){
                  return 'Please provide a valid password';
                }
                else{
                  return null;
                }
              },
            ),
          ),
          GestureDetector(
            onTap: (){
              if (_form.currentState!.validate()) {
                _form.currentState!.save();
                String existingUserName = Provider.of<UserData>(context,listen: false).getName();
                String existingUserPass = Provider.of<UserData>(context,listen: false).getPassword();
                if((name != '' && password != '') && (name == existingUserName && password == existingUserPass)){
                  Navigator.of(context).pushReplacementNamed(MovieScreen.routeName);
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Incorrect credentials.')));
                }

              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid Data Please try again!'),));
              }
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