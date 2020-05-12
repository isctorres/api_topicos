import 'package:api_topicos/dashboard.dart';
import 'package:api_topicos/login.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(Splash());

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return FormSplash();
  }
}

class FormSplash extends State<Splash>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/dash' : (context) => Dashboard(),
        //'/api' : (context) => ListApi()
      },
      home: SplashScreen(
        seconds: 5,
        navigateAfterSeconds: Login() ,
        title: Text("Bienvenidos :)", 
          style: TextStyle(fontSize: 20.0,color: Colors.blueAccent, 
            fontWeight: FontWeight.bold)
        ),
        gradientBackground: new LinearGradient(
          colors: [Colors.white,Colors.green],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        ),
        image: Image.network("http://itcelaya.edu.mx/jornadabioquimica/wp-content/uploads/2019/07/cropped-LOGO-ITC.png"),
        loadingText: Text("Cargando aplicación...."),
        photoSize: 50,
        loaderColor: Colors.white,
        //styleTextUnderTheLoader: TextStyle(fontSize: 20.0), 
      ),
    );
  }
}