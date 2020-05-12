import 'package:flutter/material.dart';

class Login extends StatelessWidget{

  final logo = Hero( 
    tag: 'logo',
    child: CircleAvatar(
    child: Image.network("http://i.pravatar.cc/300"),
    radius: 45.0,
  )
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: ListView(
          children: <Widget>[
            logo
          ],
        ) 
      ),
    );
  }
}