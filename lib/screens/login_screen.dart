import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pland_app/constants.dart';
import 'package:pland_app/screens/verify_scren.dart';
String number='';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/background.png"),fit: BoxFit.cover),
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/5),
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset('images/logo.png'),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/5),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/1.3,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('  +91', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).textScaleFactor*15,
                          color: Color(0xff6C6C6C),
                        ),),
                        SizedBox(width: 3,),
                        Container(
                          width: MediaQuery.of(context).size.width/1.8,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: MediaQuery.of(context).textScaleFactor*15,
                              color: Color(0xff6C6C6C),
                            ),
                      onChanged: (value){
                        number=value;
                      },
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Material(
                      elevation: 5.0,
                      color: kGreenColor,
                      child: MaterialButton(
                        onPressed: (){
                          print('clicked $number');
             if(number=='1'){
               print('equal');
               Navigator.pushAndRemoveUntil(
                 context,
                 MaterialPageRoute(builder: (context) => VerifyScreen()),
                     (Route<dynamic> route) => false,
               );
             }
                        },
                        minWidth: MediaQuery.of(context).size.width/1.3,
                        height: 42.0,
                        child: Text(
                          'LOG IN/SIGN UP',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).textScaleFactor*20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Text('Pland 2020. All Rights Reserved.', style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: MediaQuery.of(context).textScaleFactor*15,
              color: Colors.white,
            ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
