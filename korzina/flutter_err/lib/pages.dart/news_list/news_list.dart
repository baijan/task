import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/assets.dart';
import 'package:flutter_application_1/constants/news_colors.dart';
import 'package:flutter_application_1/constants/news_textStyle.dart';
import 'package:flutter_application_1/pages.dart/news_list/widjets.dart/news_list_buttons.dart';

class NewsListScreen extends StatefulWidget {
  const NewsListScreen({Key? key}) : super(key: key);

  @override
  State<NewsListScreen> createState() => _NewsListScreenState();
}

class _NewsListScreenState extends State<NewsListScreen> {
  List<String> buttonsTitles = ['Все', 'Интернет', 'Звонки'];

  List<bool> selectButton = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NewsColors.background,
      appBar: AppBar(
        backgroundColor: NewsColors.background,
        title: const Text("Новости", style: NewsTextStyle.fontsSize20w700),
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.language,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                NewsListButtons(
                  title: buttonsTitles[0],
                  clicked: selectButton[0],
                ),
                NewsListButtons(
                  title: buttonsTitles[1],
                  clicked: selectButton[1],
                ),
                NewsListButtons(
                  title: buttonsTitles[2],
                  clicked: selectButton[2],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Image.asset(Assets.newsImage),
                  Text(''),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
