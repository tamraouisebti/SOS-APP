import 'package:flutter/material.dart';
import 'package:sos/authentification/auth.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Authservice _auth = Authservice();
    return Container(
      child: RaisedButton(
        onPressed: () async {
          await _auth.signout();
        },
        child: Text('log out') ,),
    );
  }
}