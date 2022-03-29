import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<int> _strochki = List.generate(12, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Center(child: Text('HOBGOBLIN', style: TextStyle(color: Colors.black),)),
      ),
      body: ReorderableListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          for (int strochka in _strochki)
            ListTile(
              key: ValueKey(strochka),
              tileColor: strochka.isOdd ? Colors.green[500] : Colors.purple[200],
              title: Dismissible(
                key: UniqueKey(),
                child: Text(
                  "$strochka - Stroka",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w800),
                ),
                onDismissed: (direction) {
                  setState(() {
                    _strochki.removeAt(strochka);
                  });
                },
              ),
            ),
        ],
        onReorder: (oldIndex, newIndex) {
          setState(
            () {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              _strochki.insert(newIndex, _strochki.removeAt(oldIndex));
            },
          );
        },
      ),
    );
  }
}
