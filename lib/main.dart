import 'package:flutter/material.dart';

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

class _MyHomePageState extends State<MyHomePage> {
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
                    child: Icon(Icons.blur_circular),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 4.5),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text('Teacher'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text('Student'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text('Contact Us'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text('Careers'),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(65.0)),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 120, left: 100),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 100.0),
                            child: Text(
                              'Choose Your Carrer !                 ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 100.0, bottom: 10),
                            child: Text(
                              'Just A                 ',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'Demo Flutter Web Page',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 250.0, top: 80),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 40.0),
                                        child: Text(
                                          "Learn From ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Text("Industry Experts"),
                                    ],
                                  ),
                                ),
                              ),
                              width: 115,
                              height: 115,
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
              width: 115,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                shape: BoxShape.rectangle,
                color: Colors.blue,
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: MediaQuery.of(context).size.width / 1.7,
            child: Container(
              width: 115,
              height: 115,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(-1, 10),
                      blurRadius: 10.0),
                ],
              ),
            ),
          ),
          Positioned(
            top: 330,
            left: MediaQuery.of(context).size.width / 1.7,
            child: Container(
              width: 115,
              height: 115,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(-1, 10),
                      spreadRadius: -4,
                      blurRadius: 10.0),
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(5, -2),
                      spreadRadius: -4.0,
                      blurRadius: 5.0),
                ],
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            ),
          ),
          Positioned(
            top: 470,
            left: MediaQuery.of(context).size.width / 1.7,
            child: Container(
              width: 115,
              height: 215,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(200),
                ),
                shape: BoxShape.rectangle,
                color: Colors.purpleAccent,
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 1.48,
            child: Container(
              width: 105,
              height: 105,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.tealAccent,
              ),
            ),
          ),
          Positioned(
            top: 108,
            left: MediaQuery.of(context).size.width / 1.48,
            child: Container(
              child: Container(
                width: 115,
                height: 115,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(220)),
                  color: Colors.pink.shade300,
                ),
              ),
              width: 115,
              height: 115,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.blue.shade500,
              ),
            ),
          ),
          Positioned(
            top: 225,
            left: MediaQuery.of(context).size.width / 1.48,
            child: Container(
              width: 115,
              height: 250,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(-1, 10),
                      spreadRadius: -4,
                      blurRadius: 10.0),
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(5, -2),
                      spreadRadius: -4.0,
                      blurRadius: 5.0),
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(-5, -2),
                      spreadRadius: -4.0,
                      blurRadius: 5.0),
                ],
                borderRadius: BorderRadius.all(Radius.circular(90.0)),
                shape: BoxShape.rectangle,
                color: Colors.purpleAccent,
              ),
            ),
          ),
          Positioned(
            top: 370,
            left: MediaQuery.of(context).size.width / 1.48,
            child: Container(
              width: 115,
              height: 115,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.tealAccent,
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: MediaQuery.of(context).size.width / 1.48,
            child: Container(
              width: 115,
              height: 115,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pinkAccent,
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 1.31,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.tealAccent,
              ),
            ),
          ),
          Positioned(
            top: 405,
            left: MediaQuery.of(context).size.width / 1.31,
            child: Container(
              width: 100,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90),
                    topRight: Radius.circular(90)),
                shape: BoxShape.rectangle,
                color: Colors.orangeAccent,
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: MediaQuery.of(context).size.width / 1.31,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 405,
            left: MediaQuery.of(context).size.width / 1.19,
            child: Container(
              width: 100,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90),
                    topRight: Radius.circular(90)),
                shape: BoxShape.rectangle,
                color: Colors.yellowAccent,
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: MediaQuery.of(context).size.width / 1.19,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink.shade200,
              ),
            ),
          ),
          Positioned(
            top: 205,
            left: MediaQuery.of(context).size.width / 1.31,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(-1, 30),
                      spreadRadius: 5,
                      blurRadius: 30.0),
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(-5, -2),
                      spreadRadius: -4,
                      blurRadius: 8.0),
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(5, -2),
                      spreadRadius: -4.0,
                      blurRadius: 5.0),
                ],
                shape: BoxShape.circle,
                color: Colors.blue.shade600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
