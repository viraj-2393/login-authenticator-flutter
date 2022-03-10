import 'package:flutter/material.dart';

class CompanyInfo extends StatelessWidget{
  static const routeName = "/company-info";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Info'),
        centerTitle: true,
        backgroundColor: const Color(0xFF3F4072),
      ),
      body: Container(
        width: double.infinity,
        height: 200,
        padding: const EdgeInsets.all(20),
        child: Card(
          elevation: 5,
          child:Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: const [Text('Company: ',style: TextStyle(fontSize: 16),),Text('Geeksynergy Technologies Pvt Ltd',style: TextStyle(color: Colors.grey),)],),
                Row(children: const [Text('Address: ',style: TextStyle(fontSize: 16),),Text('Sanjaynagar, Bengaluru-56',style: TextStyle(color: Colors.grey),)],),
                Row(children: const [Text('Phone: ',style: TextStyle(fontSize: 16),),Text('XXXXXXXX09',style: TextStyle(color: Colors.grey),)],),
                Row(children: const [Text('Email: ',style: TextStyle(fontSize: 16),),Text('XXXXX@geeksynergy.com',style: TextStyle(color: Colors.grey),)],)
              ],
            ),
          ) ,
        ),
      ),
    );
  }
}