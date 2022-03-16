import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/assets.dart';
import 'package:flutter_application_1/constants/news_colors.dart';
import 'package:flutter_application_1/pages.dart/news_list/news_list.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      (() => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NewsListScreen(),
            ),
          )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NewsColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.logo,
              width: 94,
              height: 94,
            ),
            const SizedBox(
              height: 43,
            ),
            const Text("Новости")
          ],
        ),
      ),
    );
  }
}
