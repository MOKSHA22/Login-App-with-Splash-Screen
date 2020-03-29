import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginwithsplashscreen/Animations/fadeAnimation.dart';
import 'package:loginwithsplashscreen/login_and_registration/registration.dart';

class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
      resizeToAvoidBottomPadding: false,
      //resizeToAvoidBottomInset : false,
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Padding(padding: EdgeInsets.only(left: 10.0)),
          FadeAnimation(1.2, Text("Login",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black,
              fontFamily: 'Open_sans',
              fontSize: 40,
              fontWeight: FontWeight.w300,
              //frontStyle: FontStyle.normal,
            ),
          ),
          ),
          SizedBox(height: 30,),
          FadeAnimation(1.5, Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: Column(
              children: <Widget>[
//                  Container(
//                    decoration: BoxDecoration(
//                        border: Border(bottom: BorderSide(color: Colors
//                            .grey[300]))
//                    ),
//                    child: TextField(
//                      keyboardType: TextInputType.text,
//                      textInputAction: TextInputAction.next,
//                      decoration: InputDecoration(
//                        border: InputBorder.none,
//                        hintStyle: TextStyle(color: Colors.grey.withOpacity(
//                            .8)),
//                        hintText: "Arena",
//                      ),
//                    ),
//                  ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey[300])),

                  ),
                  child: TextField(
                    // decoration: new InputDecoration(labelText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      //labelText: 'Email',
                      hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
                      hintText: "Email address",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey[300]
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepOrange
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors
                          .grey[300]))
                  ),
//                    child: TextField(
//                      keyboardType: TextInputType.phone,
//                      textInputAction: TextInputAction.next,
//                      decoration: InputDecoration(
//                          border: InputBorder.none,
//                          hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
//                          hintText: "Mobile number"
//                      ),
//                    ),
//                  ),
//                  Container(
//                    decoration: BoxDecoration(
//                      border: Border(bottom: BorderSide(color: Colors.grey[300])
//                      ),
//                    ),
                  child: TextField(
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey.withOpacity(
                          .8)),
                      hintText: "Password",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey[300]
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepOrange
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15.0, left: 20.0),
                  alignment: Alignment(1.0, 0.0),
                  child: InkWell(
                    child: Text('Forgot Password',
                      style: TextStyle(
                          color: Color.fromRGBO(230, 10, 10, 0.6),
                          fontFamily: 'Open_sans',
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ),
//            SizedBox(
//              height: 4.0,),
          SizedBox(height: 20,),
          FadeAnimation(1.8, Center(
            child: Container(
              width: 200,
              height: 40.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.redAccent,
                color: Color.fromRGBO(230, 10, 10, 0.6),
                elevation: 8.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Open_sans'
                      ),
                    ),
                  ),
                ),
              ),
//                padding: EdgeInsets.all(15),
//                decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(50),
//                    color: Colors.deepOrange[800],
//                ),
//                child: Center(child: Text("Login",
//                  style: TextStyle(color: Colors.white.withOpacity(.7)),
//
//                ))
            ),
          ),
          ),
      SizedBox(
        height: 30,
      ),
            FadeAnimation(1.8, Center(
              child: Container(
              width: 200,
              height: 40.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.white,
                      color: Colors.white,
                      elevation: 8.0,
                          child: GestureDetector(
                            onTap: () {},
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Center(
                                      child: IconButton(
                                icon: FaIcon(
                                    FontAwesomeIcons.facebook),
                                ),
                                    ),
//                                    SizedBox(
//                                      width: 10.0,
//                                    ),
                                    Center(
                                      child: Text(
                                        'Login with Facebook',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Open_sans'
                                        ),
                                      ),
                                    )
                                  ],
                                )

                                  ),
                                    ),
                          ),
                ),
            ),
            ),
          SizedBox(height: 30),
    FadeAnimation(2.0, Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'New user ?',
                style: TextStyle(
                  fontFamily: 'Open_sans',
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              InkWell(

                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Registration();
                }
                ));},
                child: Text(
                  'Register',
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontFamily: 'Open_sans',
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          fontSize: 18
                      )
                ),
              )
            ],
          )
          ),
        ],
      ),
        ),
    );
  }

 Future<bool> _onBackPressed() {
    return showDialog(context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
            'Exit app?'),
        content: Text(
            'Are you sure?'),
        actions: <Widget>[
          FlatButton(
            child: Text('No'),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
          FlatButton(
            child: Text('Yes'),
            onPressed: () {
              Navigator.of(context).pop(true);
              exit(0);
            },
          ),
        ],
      );
    });
    }
 }