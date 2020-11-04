import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final widthOfScreen = MediaQuery.of(context).size.width;
    final heightOfScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        elevation: 0.0,
        title: Text(
          'HOME',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(height: 20),
                  //BCA Small text And Divider
                  Row(
                    children: <Widget>[
                      Container(
                        width: widthOfScreen * 0.067,
                      ),
                      Text(
                        'BCA',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(height: 10),
                  Row(
                    children: <Widget>[
                      Container(
                        width: widthOfScreen * 0.08,
                      ),
                      Text(
                        'Bachelor Of Computer Application',
                        style: TextStyle(
                          fontSize: widthOfScreen * 0.035,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(height: 5),
                  Container(
                    height: 2.0,
                    width: widthOfScreen * 0.85,
                    color: Colors.white,
                  ),
                ],
              ),
              Container(height: 20),
              //1Year
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 25.0),
                      Icon(Icons.trending_up, color: Colors.white),
                      Text(
                        '  1 Year',
                        style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(height: 10),
                  semcontainer('1 Semester', '2 Semester', "/sem1", "/sem2"),
                  Divider(),
                ],
              ),
              Container(height: 10),
              //2year
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 25.0),
                      Icon(Icons.trending_up, color: Colors.white),
                      Text(
                        '  2 Year',
                        style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(height: 10),
                  semcontainer('3 Semester', '4 Semester', "/sem3", ""),
                  Divider(),
                ],
              ),
              Container(height: 10),
              //3year
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 25.0),
                      Icon(Icons.trending_up, color: Colors.white),
                      Text(
                        '  3 Year',
                        style: TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Container(height: 10),
                  semcontainer('5 Semester', '6 Semester', "", ""),
                  Divider(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget semcontainer(String sem1, String sem2, String route1, String route2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () => {
            Navigator.pushNamed(context, route1),
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blue[300],
            ),
            child: Center(
              child: Text(
                sem1,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () => {
            Navigator.pushNamed(context, route2),
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blue[300],
            ),
            child: Center(
              child: Text(
                sem2,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
