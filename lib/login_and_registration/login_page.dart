import 'package:flutter/material.dart';
import 'package:loginwithsplashscreen/Animations/fadeAnimation.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    resizeToAvoidBottomPadding: false,
      //resizeToAvoidBottomInset : false,
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeAnimation(1.2, Text("Login",
              style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),)),
            SizedBox(height: 30,),
            FadeAnimation(1.5, Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: Column(
                children: <Widget>[
                  Container(
              decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[300]))
            ),
            child: TextField(
              keyboardType: TextInputType.text,
               textInputAction: TextInputAction.next,
            decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
            hintText: "Arena",
          ),
        ),
      ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey[300]))
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
                          hintText: "Email address",
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey[300]))
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
                          hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
                          hintText: "Password"
                      ),
                    ),
                  ),
                ],
              ),
            )),
            SizedBox(height: 40,),
            FadeAnimation(1.8, Center(
              child: Container(
                width: 120,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue[800]
                ),
                child: Center(child: Text("Login", style: TextStyle(color: Colors.white.withOpacity(.7)),)),
              ),
            )),
          ],
        ),
      ),
    );
  }
}