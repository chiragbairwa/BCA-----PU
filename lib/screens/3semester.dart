import 'package:flutter/material.dart';

class Sem3 extends StatefulWidget {
  @override
  _Sem3State createState() => _Sem3State();
}

class _Sem3State extends State<Sem3> {
  @override
  Widget build(BuildContext context) {
    final widthOfScreen = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    final heightOfScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        elevation: 0.0,
        title: Text(
          'SUBJECTS',
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
              Container(height: 20),
              Column(
                children: <Widget>[
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
                        '  3 Semester',
                        style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(height: 5),
                      subContainer('Computer Oriented Numerical Method'),
                      subContainer('Data Structure'),
                      Divider(),
                    ],
                  ),
                  Container(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(height: 5),
                      subContainer('History & Culture of Punjab - A'),
                      subContainer('I.S.D & Implemention'),
                      Divider(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget subContainer(String sem1) {
    return Row(
      children: <Widget>[
        InkWell(
          onTap: () => {print('Tap')},
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blue[300],
            ),
            child: Container(
              margin: EdgeInsets.all(13),
              //padding: EdgeInsets.all(5),
              child: Center(
                child: Text(
                  sem1,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
