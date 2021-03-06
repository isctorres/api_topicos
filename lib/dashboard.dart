import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MenuLateral();
  }
}

class MenuLateral extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MenuForm();
  }
}

class MenuForm extends State<MenuLateral>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard API"),
        backgroundColor: Colors.lightGreenAccent,
      ),
      drawer: Drawer( 
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              accountName: Text("ISC. Rubén Torres Frias"),
              accountEmail: Text("ruben.torres@itcelaya.edu.mx"),
              currentAccountPicture: Image.asset("images/user.png"),
            ),
            ListTile(
              title: Text("Listar API"),
              trailing: Icon(Icons.view_list),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Cerrar Sesión"),
              trailing: Icon(Icons.transfer_within_a_station),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        )
      ),
    );
  }
}