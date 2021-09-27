import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:pinput/pin_put/pin_put_state.dart';
import 'package:pland_app/screens/home_screen.dart';

import '../constants.dart';
class VerifyScreen extends StatefulWidget {
  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final _pinPutController = TextEditingController(text: '3005s');
  final _pinPutFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/background.png"),fit: BoxFit.cover),
        ),
        child:  Center(
          child: Column(
           children: [
             SizedBox(height: MediaQuery.of(context).size.height/3),
             Text('Verification Code', style: TextStyle(
               fontFamily: 'Poppins-Medium',
               fontSize: MediaQuery.of(context).textScaleFactor*20,
               color: Colors.white,
             ),),
             SizedBox(height: 20,),
             Column(
               children: [
                 Text('OTP has been sent to your mobile ', style: TextStyle(
                   fontFamily: 'Poppins',
                   fontWeight: FontWeight.w100,
                   fontSize: MediaQuery.of(context).textScaleFactor*15,
                   color: Colors.white,
                 ),),
                 Text('number.Please verify', style: TextStyle(
                   fontFamily: 'Poppins',
                   fontWeight: FontWeight.w100,
                   fontSize: MediaQuery.of(context).textScaleFactor*15,
                   color: Colors.white,
                 ),),
               ],
             ),
             SizedBox(height: 20,),
             PinPut(
               // validator: (s) {
               //   if (s.contains('1')) return null;
               //   return 'NOT VALID';
               // },
               useNativeKeyboard: false,
               // autovalidateMode: AutovalidateMode.onUserInteraction,
               withCursor: true,

               fieldsCount: 4,
               fieldsAlignment: MainAxisAlignment.spaceAround,
               textStyle: const TextStyle(fontSize: 25.0, color: Colors.black),
               eachFieldMargin: EdgeInsets.all(1),
               eachFieldWidth: 55.0,
               eachFieldHeight: 55.0,
              // onSubmit: (String pin) => _showSnackBar(pin),
               focusNode: _pinPutFocusNode,
               controller: _pinPutController,
               submittedFieldDecoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10.0),
                   color: Colors.red,shape: BoxShape.rectangle,border: Border.all(color: Colors.black)),
               followingFieldDecoration:BoxDecoration(
                   borderRadius: BorderRadius.circular(10.0),
                   color: Colors.white,shape: BoxShape.rectangle,border: Border.all(color: Colors.black)),
               selectedFieldDecoration: BoxDecoration(color: Colors.white,shape: BoxShape.rectangle,border: Border.all(color: Colors.black)),
               pinAnimationType: PinAnimationType.scale,
             ),
             SizedBox(height: 20,),
             Text('''Didn't receive the code? Resend code''', style: TextStyle(
               fontFamily: 'Poppins-Medium',
               fontSize: MediaQuery.of(context).textScaleFactor*15,
               color: Colors.white,
             ),),
             SizedBox(height: 40,),
             Padding(
               padding: EdgeInsets.symmetric(vertical: 16.0),
               child: Material(
                 elevation: 5.0,
                 color: kGreenColor,
                 child: MaterialButton(
                   onPressed: (){
                       Navigator.pushAndRemoveUntil(
                         context,
                         MaterialPageRoute(builder: (context) => HomeScreen()),
                             (Route<dynamic> route) => false,
                       );

                   },
                   minWidth: MediaQuery.of(context).size.width/1.3,
                   height: 42.0,
                   child: Text(
                     'VERIFY CODE',
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
      ),
    );
  }
}
