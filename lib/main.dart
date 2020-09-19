import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sos/authentification/auth.dart';
import 'package:sos/authentification/screen.dart';
import 'package:sos/authentification/sighup.dart';
import 'package:sos/authentification/signin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StreamProvider<FirebaseUser>.value(
              value: Authservice().getuser,
              child: Container(
          child: Screen(),
        ),
      ),
    );
  }
}
