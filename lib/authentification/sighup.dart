import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sos/authentification/inf_field.dart';
import 'package:sos/authentification/inf_field_signup.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   resizeToAvoidBottomInset: false,
    body: Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

              Container(
                height: 630,
                
                child: Stack(
                  
children: <Widget>[
    Positioned(
      top: -30,
      right:-200,
      width: 600,
          child: Container(
          width: 600,  
        
        child:  Transform.rotate(
                  angle: (-3/4)*pi,
                  child: Opacity(
                    opacity : 0.9,
                                      child: WaveWidget(
                    duration: 1,
                    config: CustomConfig(
                      gradients: [
                        [Color(0xFF3A2DB3), Color(0xFF3A2DB1)],
                        [Color(0xFFEC72EE), Color(0xFFFF7D9C)],
                        [Color(0xFFfc00ff), Color(0xFF00dbde)],
                        [Color(0xFF396afc), Color(0xFF2948ff)]
                      ],
                      durations: [35000, 19440, 10800, 6000],
                      heightPercentages: [0.20, 0.23, 0.25, 0.30],
                      blur: MaskFilter.blur(BlurStyle.inner, 5),
                      gradientBegin: Alignment.centerLeft,
                      gradientEnd: Alignment.centerRight,
                    ),
                    waveAmplitude: 1.0,
                    backgroundColor: Colors.white,
                    size: Size(double.infinity, 350.0),
),
                  ),
        ),
      ),
    ),
    
    
    
    // Max Size
    Positioned(
      top: -50,
      left:-200,
      width: 700,
          child: Container(
          width: 600,  
        
        child:  Transform.rotate(
                  angle: (3.5/4)*pi,
                  child: Opacity(
                    opacity : 0.9,
                    child: WaveWidget(
                    duration: 1,
                    config: CustomConfig(
                      gradients: [
                        [Color(0xFF3A2DB3), Color(0xFF3A2DB1)],
                        [Color(0xFFEC72EE), Color(0xFFFF7D9C)],
                        [Color(0xFFfc00ff), Color(0xFF00dbde)],
                        [Color(0xFF396afc), Color(0xFF2948ff)]
                      ],
                      durations: [35000, 19440, 10800, 6000],
                      heightPercentages: [0.20, 0.23, 0.25, 0.30],
                      blur: MaskFilter.blur(BlurStyle.inner, 0),
                      gradientBegin: Alignment.centerLeft,
                      gradientEnd: Alignment.centerRight,
                    ),
                    waveAmplitude: 1.0,
                    size: Size(double.infinity, 350.0),
),
                  ),
        ),
      ),
    ),
    Inf_field_signup(),
    Positioned(
      top: 5,
      left:5,
      child: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.white,
        iconSize: 30,
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    )
  ],
                ),
              ),
            
             
               WaveWidget(
            duration: 1,
            config: CustomConfig(
              gradients: [
                [Color(0xFF3A2DB3), Color(0xFF3A2DB1)],
                [Color(0xFFEC72EE), Color(0xFFFF7D9C)],
                [Color(0xFFfc00ff), Color(0xFF00dbde)],
                [Color(0xFF396afc), Color(0xFF2948ff)]
              ],
              durations: [35000, 19440, 10800, 6000],
              heightPercentages: [0.20, 0.23, 0.25, 0.30],
              blur: MaskFilter.blur(BlurStyle.inner, 5),
              gradientBegin: Alignment.centerLeft,
              gradientEnd: Alignment.centerRight,
            ),
            waveAmplitude: 1.0,
            
            size: Size(double.infinity, 50.0),
),




              ]
    ),
    ),

    
    
    );
  }
}