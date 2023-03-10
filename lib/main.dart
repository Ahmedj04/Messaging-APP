import 'package:flutter/material.dart';
import 'package:messagingapp/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messenger',
      // theme: ThemeData(
      //   primarySwatch: Colors.red,
      // ),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

