import 'package:flutter/material.dart';
import 'package:mais_saude/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          hintColor: Colors.blueGrey[100],
          primaryColor: Colors.grey[300],
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
