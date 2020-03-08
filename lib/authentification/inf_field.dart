import 'package:flutter/material.dart';
import 'package:sos/authentification/sighup.dart';

import 'auth.dart';

class Inf_Field extends StatefulWidget {
  @override
  _Inf_FieldState createState() => _Inf_FieldState();
}

class _Inf_FieldState extends State<Inf_Field> {
  final Authservice _auth = Authservice();
  final _formKey = GlobalKey<FormState>();
  List<String> _gender=List(2);

  @override
  Widget build(BuildContext context) {
    return 
    Positioned(
        right: 10.0,
        left: 10.0,
        bottom: 5.0, 
        child: Form(
                  key: _formKey,
                  child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
             color: Colors.white,
           
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
                      child: Text('SignIn',style: 
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
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                      },
                                    
                    
                    decoration:
                   InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                     hintText: 'Mail'),),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey[300],
                            ),
                  child: TextFormField(decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
      
                    hintText: 'Password'),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                        onTap: (){},
                        child: Text('Forgot Password ?',style: TextStyle(
                        color: Colors.grey[500]
                      ),),
                    ),
                  ),


                  ButtonTheme(
                     

                      minWidth: 300,
                      
                      child: RaisedButton( 
                        elevation: 10.0,
                       shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)), 
                      color: Colors.blueAccent,
                      onPressed: () async{
                         dynamic result = await _auth.sugninanony(); 
                         if(result==null){print('khra');}
                         else{print('mechikhra');print(result.toString());}



                      },
                      child: Text('SignIn',style: 
                        TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                          color: Colors.white),
                          
                          ),
                    ),
                  ),

                  SizedBox(height: 20,),
                  Text("--------- Or continue with ---------",style: TextStyle(
                      color: Colors.grey[500]
                    ),),

                    SizedBox(height: 20,),
                   
                 
                       Padding(
                         padding: EdgeInsets.fromLTRB(60,0,60,0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             IconButton(
                               onPressed: (){},
                               iconSize: 80.0,
                               icon: new Image.asset("assets/facebook.png"),),

                               IconButton(
                               onPressed: (){},
                               iconSize: 80.0,
                               icon: new Image.asset("assets/google.png"),),
                               
                           ],
                         ),
                       ),

                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                          Text('Create account?',style: TextStyle(
                          color: Colors.grey[500]
                      
                    ),),
                    
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                                 context,
                              MaterialPageRoute(builder: (context) => SignUp()),);
                      },
                      child: Text('Sign Up',style: TextStyle(
                      color: Colors.blueAccent,
                        
                      ),),
                    ),

                         ],
                       )
                       
                     
                 
                 
                          
                    
                 


                ],
              ),
            ),
          ),
        ),
    );
  }
}