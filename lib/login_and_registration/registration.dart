import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginwithsplashscreen/Animations/fadeAnimation.dart';
import 'package:loginwithsplashscreen/login_and_registration/login_page.dart';

class Registration extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      //resizeToAvoidBottomInset : false,
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Padding(padding: EdgeInsets.only(left: 10.0)),
          FadeAnimation(1.2, Text("Sign Up",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black,
              fontFamily: 'Open_sans',
              fontSize: 40,
              fontWeight: FontWeight.w300,
              //frontStyle: FontStyle.normal,
            ),
          ),
          ),
          FadeAnimation(1.5, Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey[300])),
                  ),
                  child: TextField(
                    // decoration: new InputDecoration(labelText: 'Email'),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      //labelText: 'Email',
                      hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
                      hintText: "Arena",
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
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors
                          .grey[300]))
                  ),
                  child: TextField(
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey.withOpacity(
                          .8)),
                      hintText: "Confirm Password",
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
                      'SIGN UP',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Open_sans'
                      ),
                    ),
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
                'Already have an account ?',
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
                  Navigator.pop(context, MaterialPageRoute(builder: (context){
                    return LoginPage();
                  }
                  ));},
                child: Text(
                    'Log In',
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
    );
  }
}