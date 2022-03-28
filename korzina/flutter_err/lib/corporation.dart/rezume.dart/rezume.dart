import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/assets.dart';
import 'package:flutter_application_1/constants/news_colors.dart';

class Rezume1 extends StatefulWidget {
  const Rezume1({Key? key}) : super(key: key);

  @override
  _RezumeState createState() => _RezumeState();
}

class _RezumeState extends State<Rezume1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: CorporationColor.background,
            appBar: AppBar(
              backgroundColor: CorporationColor.background,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
            ),
            body: Container(
              alignment: Alignment.center,
              child: Column(
                
                children: [
                  CircleAvatar(backgroundImage: AssetImage(Assets.big_perviy),radius: 57,),
               
                const Text('text')
                
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}

