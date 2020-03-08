import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';


class  Authservice {


    final FirebaseAuth _auth = FirebaseAuth.instance;


    Stream<FirebaseUser> get getuser{

      return _auth.onAuthStateChanged; 
    }

    Future sugninanony() async {
    try {
      AuthResult authresult  = await _auth.signInAnonymously();
      FirebaseUser user = authresult.user;
      return user;
    
    }
    catch (e){}
    print(e.toString());
    return null;
    }

      Future signout() async {
    try {
     
     
      return await _auth.signOut();
    
    }
    catch (e){}
    print(e.toString());
    return null;
      }

Future signupwithmailandpassword(String mail, String pword )
async { 
  try{AuthResult user =  await _auth.createUserWithEmailAndPassword(email: mail,password: pword);}
  
  catch(e){
    print(e.toString());
    return null;
  }
}

}