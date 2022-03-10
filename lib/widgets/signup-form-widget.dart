import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/UserData.dart';
import '../screens/login-screen.dart';
class SignupFormWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SignupFormWidgetState();
  }
}

class _SignupFormWidgetState extends State<SignupFormWidget>{
  final _form = GlobalKey<FormState>();
  String name = '';
  String phone = '';
  String email = '';
  String password = '';
  String profession = '';
  // Initial Selected Value
  String dropdownvalue = 'Engineer';

  // List of items in our dropdown menu
  var items = [
    'Engineer',
    'Accountant',
    'Doctor',
    'Lawyer',
    'Mechanic',
    'Other'
  ];
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _form,
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
                  name = value!;
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
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password...',
                    prefixIcon: Icon(Icons.password,color: Colors.grey,)
                ),
                onSaved: (value){
                  password = value!;
                },
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
            const SizedBox(height: 20,),
            Container(
              decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email...',
                    prefixIcon: Icon(Icons.email,color: Colors.grey,)
                ),
                onSaved: (value){
                  email = value!;
                },
                validator: (value){
                  if(value!.isEmpty){
                    return 'Please provide email';
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
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Mobile...',
                    prefixIcon: Icon(Icons.phone,color: Colors.grey,)
                ),
                onSaved: (value){
                  phone = value!;
                },
                validator: (value){
                  if(value!.isEmpty || value.length != 10){
                    return 'Please provide valid phone number';
                  }
                  else{
                    return null;
                  }
                },
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top:20),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 50,
              decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child:DropdownButton(
                isExpanded: true,
                value: dropdownvalue,
                underline: SizedBox(),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    profession = newValue!;
                  });
                },
              ),
            ),

            GestureDetector(
              onTap: (){
                if (_form.currentState!.validate()) {
                  _form.currentState!.save();
                  Provider.of<UserData>(context,listen: false).registerUser(name, email, phone, password, profession);
                  Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invalid Data Please try again!'),));
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
                child: const Text('Sign up',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
              ),
            )


          ],
        ),
      );
  }
}