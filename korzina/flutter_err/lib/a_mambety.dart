import 'package:flutter/material.dart';
import 'package:flutter_application_1/corporation.dart/sotrudniki.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sotrudniki(),
    );
  }
}