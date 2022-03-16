import 'package:flutter/material.dart';

class NotMyApp extends StatelessWidget {
  const NotMyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: Text('hellow')),)
    );
  }
}