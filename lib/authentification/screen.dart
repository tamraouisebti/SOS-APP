import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sos/authentification/signin.dart';
import 'package:sos/home/home.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {

    final user =Provider.of<FirebaseUser>(context);
    return user==null? SignIn():  Home();
  }
}