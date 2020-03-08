import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sos/authentification/auth.dart';

class Inf_field_signup extends StatefulWidget {
  @override
  _Inf_field_signupState createState() => _Inf_field_signupState();
}

class _Inf_field_signupState extends State<Inf_field_signup> {
  List<String> gender = ["Male","Female"];
  final Authservice _auth= Authservice();
  int selecte_gender=0;
  String mail='';
  String password='';


  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 10.0,
        left: 10.0,
        bottom: 5.0, 
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
           color: Colors.grey[200],
         
        boxShadow: [BoxShadow(
          color: Colors.grey,
          blurRadius: 5.0,
        ),]),
          
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Align
                ( alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Sign Up',style: 
                    TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: Colors.blueAccent),
                      
                      ),
                  )),
                
                
                //mail 
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[300],
                          ),
                child: TextFormField(decoration:
                 InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                   hintText: 'User Name'),),
                ),
                SizedBox(height: 20.0,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[300],
                          ),
                child: TextFormField(decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
      
                  hintText: 'Phone Number'),
                  ),
                ),
                SizedBox(height: 10.0,),
               
                Container(
                  alignment: Alignment.center,
                  
                  height: 65,
                  width: 188,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    
                    itemBuilder: (BuildContext context, int index) {
                      
                    return  
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GestureDetector(
                          
                          child: GestureDetector(
                            onTap: (){setState(() {
                      selecte_gender=index;
                      });},
                                                      child: Container(
                            height: 50,
                            width: 75,
                            decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow: [BoxShadow(
                          color: Colors.grey[400],
                          offset: Offset(4.0,4.0),
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                        ),
                      
                        
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: selecte_gender!=index ? [
                            Colors.grey[200],
                            Colors.grey[300],
                            Colors.grey[400],
                            Colors.grey[500],
                          ] : 
                          [
                            Colors.blue[100],
                            Colors.blue[200],
                            Colors.blue[400],
                            Colors.blue[500],
                          ],
                          stops: [0.1,0.3,0.8,0.9]
                        )
                                
                                ),




                            child: Align(
                              alignment: Alignment.center,
                              child: Text(gender[index],style:TextStyle(color: Colors.grey[600]),))
                            ),
                          ),
                      ),
                    );
                  },
                  itemCount: gender.length),
                ),
                 SizedBox(height: 20.0,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[300],
                          ),
                child: TextFormField(
                  onChanged: (val){mail=val;},
                  decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
      
                  hintText: 'Email Address'),
                  ),
                ),
                 SizedBox(height: 20.0,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[300],
                          ),
                child: TextFormField(
                  onChanged: (val){password=val;},
                  decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
      
                  hintText: 'Password'),
                  ),
                ),

                SizedBox(height: 20,),
                ButtonTheme(
                   

                    minWidth: 300,
                    
                    child: RaisedButton( 
                      elevation: 10.0,
                     shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)), 
                    color: Colors.blueAccent,
                    onPressed: () async{
                      AuthResult result=await _auth.signupwithmailandpassword(mail, password);
                      result== null ? print('error'):print(result.toString());
                      
                    },
                    child: Text('Sign Up',style: 
                      TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        color: Colors.white),
                        
                        ),
                  ),
                ),

                SizedBox(height: 20,),
                   
               
               
                        
                  
               


              ],
            ),
          ),
        ),
    );
  }
}