import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  Animation yellowBall;
  AnimationController yellowBallController;

  Animation orangeBar;
  AnimationController orangeBarController;

  Animation blueBallLeft;
  AnimationController blueBallLeftController;

  Animation purpleBar;
  AnimationController purpleBarController;

  Animation stackedBox;
  AnimationController stackedBoxController;

  Animation redBall;
  AnimationController redBallController;

  //Tween<double> imageSlide;
  Animation imageSlide;
  AnimationController imageSlideController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    imageSlideController =
        AnimationController(vsync: this, duration: Duration(seconds: 6));

    final Animation imageSlideCurve =
        CurvedAnimation(parent: imageSlideController, curve: Curves.easeInOut);

    imageSlide = Tween<double>(begin: 55, end: 00).animate(imageSlideCurve);
    imageSlideController.forward();

    imageSlide.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        imageSlideController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        imageSlideController.forward();
      }
    });

    redBallController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    final Animation redBallCurve =
        CurvedAnimation(parent: redBallController, curve: Curves.easeIn);
    redBall = Tween<double>(begin: 250, end: 470).animate(redBallCurve);
    redBallController.forward();

    redBall.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        redBallController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        redBallController.forward();
      }
    });

    blueBallLeftController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    final Animation blueBallLeftCurve =
        CurvedAnimation(parent: blueBallLeftController, curve: Curves.bounceIn);
    blueBallLeft =
        Tween<double>(begin: 830, end: 1040).animate(blueBallLeftCurve);
    blueBallLeftController.forward();

    blueBallLeft.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        blueBallLeftController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        blueBallLeftController.forward();
      }
    });

    orangeBarController =
        AnimationController(vsync: this, duration: Duration(seconds: 6));
    final Animation orangeBarCurve =
        CurvedAnimation(parent: orangeBarController, curve: Curves.decelerate);

    orangeBar = Tween<double>(begin: 150, end: 450).animate(orangeBarCurve);

    orangeBarController.forward();

    orangeBar.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        orangeBarController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        orangeBarController.forward();
      }
    });

    stackedBoxController =
        AnimationController(vsync: this, duration: Duration(seconds: 6));
    final Animation stackedCurve =
        CurvedAnimation(parent: stackedBoxController, curve: Curves.easeInOut);
    stackedBox = Tween<double>(begin: 205, end: 450).animate(stackedCurve);
    //  imageSlide = Tween<double>(begin: 75, end: 00);

    stackedBoxController.forward();

    stackedBox.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        stackedBoxController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        stackedBoxController.forward();
      }
    });

    purpleBarController =
        AnimationController(vsync: this, duration: Duration(seconds: 8));
    final Animation curvepurple =
        CurvedAnimation(parent: purpleBarController, curve: Curves.easeInCubic);
    purpleBar = Tween<double>(begin: 220, end: 400).animate(curvepurple);
    purpleBarController.forward();

    purpleBar.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        purpleBarController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        purpleBarController.forward();
      }
    });

    yellowBallController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));

    final Animation curveYellow =
        CurvedAnimation(parent: yellowBallController, curve: Curves.easeInBack);

    yellowBall = Tween<double>(begin: 120, end: 380).animate(curveYellow);

    yellowBallController.forward();

    yellowBall.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        yellowBallController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        yellowBallController.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width / 48),
                    child: Icon(
                      Icons.blur_circular,
                      size: MediaQuery.of(context).size.width / 54.8,
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 4.5),
                  Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width / 54.8),
                    child: Text(
                      'Teacher',
                      style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width / 91.3333),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width / 54.8),
                    child: Text(
                      'Student',
                      style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width / 91.3333),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width / 54.8),
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width / 91.3333),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width / 54.8),
                    child: Text(
                      'Careers',
                      style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width / 91.3333),
                    ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                        MediaQuery.of(context).size.width / 21.076923)),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width / 11.416666,
                        left: MediaQuery.of(context).size.width / 13.7),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                right:
                                    MediaQuery.of(context).size.width / 13.7),
                            child: Text(
                              'Choose Your Carrer !                 ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width / 54.8,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width / 13.7,
                                bottom:
                                    MediaQuery.of(context).size.width / 137),
                            child: Text(
                              'Just A               ',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width /
                                      45.6666,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'Demo Flutter Web Page',
                            style: TextStyle(
                              fontFamily: "Inconsolata",
                              fontSize:
                                  MediaQuery.of(context).size.width / 45.6666,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width / 5.48,
                                top:
                                    MediaQuery.of(context).size.width / 17.125),
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.width /
                                        45.6666),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                34.25),
                                        child: Text(
                                          "Made By ",
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  91.3333333,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Text("Sachin Singh"),
                                    ],
                                  ),
                                ),
                              ),
                              width: MediaQuery.of(context).size.width /
                                  11.9130434,
                              height: MediaQuery.of(context).size.width /
                                  11.9130434,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue.shade500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 1.2,
                  color: Colors.blue.shade900,
                ),
              ),
            ],
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 1.7,
            child: Container(
              width: MediaQuery.of(context).size.width / 11.913043478,
              height: MediaQuery.of(context).size.width / 6.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                        MediaQuery.of(context).size.width / 68.5),
                    bottomRight: Radius.circular(
                        MediaQuery.of(context).size.width / 68.5)),
                shape: BoxShape.rectangle,
                color: Colors.blue,
              ),
            ),
          ),
          AnimatedBuilder(
              animation: yellowBall,
              builder: (context, child) {
                return Positioned(
                  top: yellowBall.value,
                  left: MediaQuery.of(context).size.width / 1.7,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 11.91304347,
                    height: MediaQuery.of(context).size.width / 11.91304347,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black45,
                            offset: Offset(-1, 10),
                            blurRadius:
                                MediaQuery.of(context).size.width / 137),
                      ],
                    ),
                  ),
                );
              }),
          Positioned(
            top: MediaQuery.of(context).size.width / 2.91489361,
            left: MediaQuery.of(context).size.width / 1.7,
            child: Container(
              width: MediaQuery.of(context).size.width / 11.91304347,
              height: MediaQuery.of(context).size.width / 6.372093023,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight:
                      Radius.circular(MediaQuery.of(context).size.width / 6.85),
                ),
                shape: BoxShape.rectangle,
                color: Colors.purpleAccent,
              ),
            ),
          ),
          AnimatedBuilder(
            animation: redBall,
            builder: (context, child) {
              return Positioned(
                top: redBall.value,
                left: MediaQuery.of(context).size.width / 1.48,
                child: Container(
                  width: MediaQuery.of(context).size.width / 13.0476190,
                  height: MediaQuery.of(context).size.width / 13.0476190,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepOrange.shade500,
                  ),
                ),
              );
            },
          ),
          Positioned(
            top: MediaQuery.of(context).size.width / 12.6581851,
            left: MediaQuery.of(context).size.width / 1.48,
            child: Container(
              child: Container(
                width: MediaQuery.of(context).size.width / 11.9130434782,
                height: MediaQuery.of(context).size.width / 11.9130434782,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width / 6.227272727)),
                  color: Colors.pink.shade300,
                ),
              ),
              width: MediaQuery.of(context).size.width / 11.9130434782,
              height: MediaQuery.of(context).size.width / 11.9130434782,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.blue.shade500,
              ),
            ),
          ),
          AnimatedBuilder(
            animation: purpleBar,
            builder: (context, child) {
              return Positioned(
                top: purpleBar.value,
                left: MediaQuery.of(context).size.width / 1.48,
                child: Container(
                  width: MediaQuery.of(context).size.width / 11.9130434782, //
                  height: MediaQuery.of(context).size.width / 5.48,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(-1, 10),
                          spreadRadius: -4,
                          blurRadius: MediaQuery.of(context).size.width / 137),
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(5, -2),
                          spreadRadius: -4.0,
                          blurRadius: MediaQuery.of(context).size.width / 274),
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(-5, -2),
                          spreadRadius: -4.0,
                          blurRadius: MediaQuery.of(context).size.width / 274),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(
                        MediaQuery.of(context).size.width / 15.222222222)),
                    shape: BoxShape.rectangle,
                    color: Colors.purpleAccent,
                  ),
                ),
              );
            },
          ),
          Positioned(
            top: MediaQuery.of(context).size.width / 3.7027027,
            left: MediaQuery.of(context).size.width / 1.48,
            child: Container(
              width: MediaQuery.of(context).size.width / 11.9130434782,
              height: MediaQuery.of(context).size.width / 11.9130434782,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.tealAccent,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width / 2.49090909,
            left: MediaQuery.of(context).size.width / 1.48,
            child: Container(
              width: MediaQuery.of(context).size.width / 11.9130434782,
              height: MediaQuery.of(context).size.width / 11.9130434782,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pinkAccent,
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 1.31,
            child: Container(
              width: MediaQuery.of(context).size.width / 6.85,
              height: MediaQuery.of(context).size.width / 6.85,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.tealAccent,
              ),
            ),
          ),
          AnimatedBuilder(
            animation: orangeBar,
            builder: (context, child) {
              return Positioned(
                top: orangeBar.value,
                left: MediaQuery.of(context).size.width / 1.31,
                child: Container(
                  width: MediaQuery.of(context).size.width / 13.7,
                  height: MediaQuery.of(context).size.width / 3.425,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                          MediaQuery.of(context).size.width / 15.2222222),
                    ),
                    shape: BoxShape.rectangle,
                    color: Colors.orangeAccent,
                  ),
                ),
              );
            },
          ),
          Positioned(
            top: MediaQuery.of(context).size.width / 3.425,
            left: MediaQuery.of(context).size.width / 1.31,
            child: Container(
              width: MediaQuery.of(context).size.width / 13.7,
              height: MediaQuery.of(context).size.width / 13.7,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width / 6.68,
            left: MediaQuery.of(context).size.width / 1.28,
            child: Container(
              width: MediaQuery.of(context).size.width / 7.85,
              height: MediaQuery.of(context).size.width / 7.85,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber.shade300,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width / 3.38271604,
            left: MediaQuery.of(context).size.width / 1.19,
            child: Container(
              width: MediaQuery.of(context).size.width / 13.7,
              height: MediaQuery.of(context).size.width / 10.538461538,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                        MediaQuery.of(context).size.width / 15.222222),
                    topRight: Radius.circular(
                        MediaQuery.of(context).size.width / 15.222222)),
                shape: BoxShape.rectangle,
                color: Colors.yellowAccent,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width / 2.49090909,
            left: MediaQuery.of(context).size.width / 1.19,
            child: Container(
              width: MediaQuery.of(context).size.width / 13.7,
              height: MediaQuery.of(context).size.width / 13.7,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink.shade200,
              ),
            ),
          ),
          AnimatedBuilder(
            animation: blueBallLeft,
            builder: (context, child) {
              return Positioned(
                top: MediaQuery.of(context).size.width / 4.1515151,
                left: blueBallLeft.value,
                child: Container(
                  width: MediaQuery.of(context).size.width / 11.91304347,
                  height: MediaQuery.of(context).size.width / 11.91304347,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(-1, 10),
                          spreadRadius: -4,
                          blurRadius: MediaQuery.of(context).size.width / 137),
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(5, -2),
                          spreadRadius: -4.0,
                          blurRadius: MediaQuery.of(context).size.width / 274),
                    ],
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
          AnimatedBuilder(
            animation: stackedBox,
            builder: (context, child) {
              return Positioned(
                top: stackedBox.value,
                left: MediaQuery.of(context).size.width / 1.31,
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          top: imageSlide.value,
                          left: 75,
                          child: Icon(
                            Icons.android,
                            size: 50,
                          )),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width / 6.85,
                  height: MediaQuery.of(context).size.width / 6.85,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(-1, 30),
                          spreadRadius: MediaQuery.of(context).size.width / 274,
                          blurRadius:
                              MediaQuery.of(context).size.width / 45.6666),
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(-5, -2),
                          spreadRadius:
                              -MediaQuery.of(context).size.width / 274,
                          blurRadius:
                              MediaQuery.of(context).size.width / 171.25),
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(5, -2),
                          spreadRadius:
                              -MediaQuery.of(context).size.width / 274,
                          blurRadius: MediaQuery.of(context).size.width / 13.7),
                    ],
                    shape: BoxShape.circle,
                    color: Colors.blue.shade600,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
