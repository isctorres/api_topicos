import 'package:flutter/material.dart';

class Login extends StatelessWidget{

  final logo = Hero( 
    tag: 'logo',
    child: CircleAvatar(
    child: Image.asset("images/user.png"),
    radius: 45.0,
  )
  );

  final txtUser = TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      hintText: 'Introduce el usuario',
      contentPadding: EdgeInsets.fromLTRB(20.2, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(35.0))
    ),
  );

  final txtPwd = TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      hintText: 'Introduce la contraseña',
      contentPadding: EdgeInsets.fromLTRB(20.2, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(35.0))
    ),
  );

  @override
  Widget build(BuildContext context) {

    final btnLogin = RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25)
      ),
      child: Text('Validar Usuario', style: TextStyle(color: Colors.black)),
      color: Colors.grey,
      onPressed: (){
        Navigator.pushReplacementNamed(context, '/dash');
      }
    );
  
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 25.0,right: 25.0),
          children: <Widget>[
            logo,
            SizedBox(height: 35.0),
            txtUser,
            SizedBox(height: 25.0),
            txtPwd,
            SizedBox(height: 25.0),
            btnLogin
          ],
        ) 
      ),
    );
  }
}