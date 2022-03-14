import 'package:flutter/material.dart';
import '_BMI.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      home: const BMI(),
    );
  }
}

