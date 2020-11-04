import 'package:flutter/material.dart';
import './home.dart';
import 'screens/1semester.dart';
import 'screens/2semester.dart';
import 'screens/3semester.dart';
import 'screens/5semester.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BCA',
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(),
        '/sem1': (context) => Sem1(),
        '/sem2': (context) => Sem2(),
        '/sem3': (context) => Sem3(),
        '/sem5': (context) => Sem5(),
      },
    );
  }
}
