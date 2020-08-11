import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  // WidgetsApp // MaterialApp //CupertinoApp
  runApp(MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      )));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.teal,
        ),
      ),
      drawer: Drawer(
          child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Leo Valdez"),
            accountEmail: Text("leovaldez@chb.com"),
            // currentAccountPicture: CircleAvatar(),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Leo Valdez"),
            subtitle: Text("The Scrawny Kid"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("leovaldez@chb.com"),
            trailing: Icon(Icons.edit),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
