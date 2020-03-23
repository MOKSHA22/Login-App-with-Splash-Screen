import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:loginwithsplashscreen/Animations/fadeAnimation.dart';
import 'package:loginwithsplashscreen/login_and_registration/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen()
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  AnimationController _scaleController;
  AnimationController _scale2Controller;
  AnimationController _widthController;
  AnimationController _positionController;

  Animation<double> _scaleAnimation;
  Animation<double> _scale2Animation;
  Animation<double> _widthAnimation;
  Animation<double> _positionAnimation;

  bool hideIcon = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scaleController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 300)
    );

    _scaleAnimation = Tween<double>(
        begin: 1.0, end: 0.8
    ).animate(_scaleController)..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _widthController.forward();
      }
    });

    _widthController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 600)
    );

    _widthAnimation = Tween<double>(
        begin: 80.0,
        end: 300.0
    ).animate(_widthController)..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _positionController.forward();
      }
    });

    _positionController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 1000)
    );

    _positionAnimation = Tween<double>(
        begin: 0.0,
        end: 215.0
    ).animate(_positionController)..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          hideIcon = true;
        });
        _scale2Controller.forward();
      }
    });

    _scale2Controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 300)
    );

    _scale2Animation = Tween<double>(
        begin: 1.0,
        end: 32.0
    ).animate(_scale2Controller)..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: LoginPage()));
      }
    });
  }



  @override
  Widget build(BuildContext context) {

    final double width = MediaQuery.of(context).size.width;
    return  Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
      Container(
      decoration: BoxDecoration(
          color: Colors.redAccent
      ),
      child: Stack(
        children: <Widget>[
//          Positioned(
//            top: -50,
//            left: 0,
//            child: Container(
//              width: width,
//              height: 400,
//              decoration: BoxDecoration(
//                image: DecorationImage(
//                    image: AssetImage('images/logo.png'),
//                     fit: BoxFit.cover)
//              ),
//            ),
//          )
        ],
      ),
    ),
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    CircleAvatar(
    backgroundColor: Colors.white,
    backgroundImage: AssetImage('images/logo.png'),
    radius: 70.0,
    // child: Icon(),
    ),
    Padding(
    padding: EdgeInsets.only(top:10.0),
    ),
    Text('ArenaBuddy',
    style: TextStyle(
    color: Colors.white,
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    //height: 1.5
    ),
    ),
      FadeAnimation(1.3, Text("We got your back",
        style: TextStyle(color: Colors.white.withOpacity(.7), height: 1.4, fontSize: 16),)),
    Padding(
    padding: EdgeInsets.only(top:100.0),
    ),
      FadeAnimation(2.6, AnimatedBuilder(
        animation: _scaleController,
        builder: (context, child) => Transform.scale(
            scale: _scaleAnimation.value,
            child: Center(
              child: AnimatedBuilder(
                animation: _widthController,
                builder: (context, child) => Container(
                  width: _widthAnimation.value,
                  height: 80,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white.withOpacity(.5)
                  ),
                  child: InkWell(
                    onTap: () {
                      _scaleController.forward();
                    },
                    child: Stack(
                        children: <Widget> [
                          AnimatedBuilder(
                            animation: _positionController,
                            builder: (context, child) => Positioned(
                              left: _positionAnimation.value,
                              child: AnimatedBuilder(
                                animation: _scale2Controller,
                                builder: (context, child) => Transform.scale(
                                    scale: _scale2Animation.value,
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red
                                      ),
                                      child: hideIcon == false ? Icon(Icons.arrow_forward, color: Colors.white,) : Container(),
                                    )
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ),
            )),
      )),
    ],
    ),
    ],
    ),
    );
  }

}
