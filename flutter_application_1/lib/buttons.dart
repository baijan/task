// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Buttons"),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: TextButton(
                    child: Text("TextButton"),
                    onPressed: () {
                      print("TextButtonPress");
                    },
                    onLongPress: () {
                      print("TextbuttonLongPress");
                    },
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(20),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.all(10),
                      ),
                    ),
                  ),
                  color: Colors.tealAccent,
                ),
                Container(
                  child: RaisedButton(
                    child: Text("RaisedButton"),
                    onPressed: () {
                      print("RaisedButton");
                    },
                    color: Colors.grey,
                    textColor: Colors.purple,
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(Icons.cloud),
                    onPressed: () {
                      print("akatsuki");
                    },
                    color: Colors.red,
                  ),
                ),
                Container(
                  child: FloatingActionButton(
                    child: Text("FAB"),
                    onPressed: () {
                      print("FAB");
                    },
                    hoverColor: Colors.pink,
                    backgroundColor: Colors.black,
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("InkWell");
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text("InkWell"),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.indigo),
                  ),
                ),
                Container(
                  child: OutlineButton(
                    child: Text("OutlineButton"),
                    onPressed: () {
                      print("OutlineButton");
                    },
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      print("ElevatedButton");
                    },
                    child: Text("ElevatedButton"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      overlayColor: MaterialStateProperty.all(Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
