import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/constants/assets.dart';
import 'package:flutter_task/constants/news_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Image(
            image: AssetImage(Assets.speedometr),
            width: 50,
            height: 32,
          ),
        ),
        title: Container(
          padding: EdgeInsets.all(10),
          width: 164,
          height: 30,
          color: Colors.blue,
        ),
        toolbarHeight: 80,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              color: NewsColors.background1,
              height: 60,
            ),
            DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: [
                  const TabBar(
                    labelColor: Colors.red,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.red,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(text: 'Авторизация'),
                      Tab(text: 'Регистрация'),
                    ],
                  ),
                  Center(
                    child: Container(
                      height: 400,
                      child: TabBarView(
                        children: [
// Авторизация
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 46),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Телефон',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: isSelected
                                                ? Colors.grey
                                                : Colors.black),
                                      ),
                                      CupertinoSwitch(
                                        trackColor: Color(0xffF9F9F9),
                                        value: isSelected,
                                        thumbColor: Colors.blue,
                                        activeColor: Color(0xffF9F9F9),
                                        onChanged: (value) {
                                          setState(() {
                                            isSelected = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        'E-Mail',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: isSelected
                                                ? Colors.black
                                                : Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.zero),
                                    hintText: isSelected ? 'E-Mail' : 'Телефон',
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  isSelected
                                      ? 'В формате @mail.com'
                                      : 'В формате +7',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.zero),
                                      hintText: 'Пароль'),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  child: const Text(
                                    'Забыли пароль?',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: 345,
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Войти',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
// Регистрация
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 46),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Телефон',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: isSelected
                                                ? Colors.grey
                                                : Colors.black),
                                      ),
                                      CupertinoSwitch(
                                        trackColor: const Color(0xffF9F9F9),
                                        value: isSelected,
                                        thumbColor: Colors.blue,
                                        activeColor: const Color(0xffF9F9F9),
                                        onChanged: (value) {
                                          setState(() {
                                            isSelected = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        'E-Mail',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: isSelected
                                                ? Colors.black
                                                : Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.zero),
                                    hintText: isSelected ? 'E-Mail' : 'Телефон',
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  isSelected
                                      ? 'В формате @mail.com'
                                      : 'В формате +7',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: <Widget>[
                                    const Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.zero),
                                          hintText: 'Промокод (если есть)',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 60,
                                      height: 51,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Icon(Icons.check),
                                        style: ButtonStyle(
                                          elevation: MaterialStateProperty
                                              .resolveWith<double>(
                                            (Set<MaterialState> states) {
                                              if (states.contains(
                                                  MaterialState.disabled)) {
                                                return 0;
                                              }
                                              return 0;
                                            },
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Такого промокода не существует',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: 345,
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Зарегистрироваться',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 176,
              color: NewsColors.background1,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'Публичная оферта',
                    style: TextStyle(
                      color: Color(0xfff0eded),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                  ),
                ],
              ),
              color: const Color(0xffA4AFC1),
              height: 57,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

