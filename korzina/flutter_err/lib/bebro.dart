import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/assets.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class Categories {
  String? name;

  Categories({required this.name});
}

final List<Categories> brancd = [
  Categories(name: 'Blacl'),
  Categories(name: 'Bold'),
  Categories(name: 'Medium'),
  Categories(name: 'Regular'),
  Categories(name: 'Light'),
  Categories(name: 'Blacl'),
  Categories(name: 'Blacl'),
  Categories(name: 'Bold'),
  Categories(name: 'Medium'),
  Categories(name: 'Regular'),
  Categories(name: 'Light'),
  Categories(name: 'Blacl'),
  Categories(name: 'Blacl'),
  Categories(name: 'Bold'),
  Categories(name: 'Medium'),
  Categories(name: 'Regular'),
  Categories(name: 'Light'),
  Categories(name: 'Blacl'),
  Categories(name: 'Blacl'),
  Categories(name: 'Bold'),
  Categories(name: 'Medium'),
  Categories(name: 'Regular'),
  Categories(name: 'Light'),
  Categories(name: 'Blacl'),
];

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? isSelected;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              color: Colors.black,
            ),
          ],
          elevation: 1,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage(Assets.devushka),
                        radius: 59,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff6200EE),
                          radius: 18,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Center(
                  child: Text(
                    'Tiana Rosser',
                    style: TextStyle(
                      color: Color(0xff151522),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                const Center(
                  child: Text(
                    'Developer',
                    style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Divider(
                  color: Color(0xff21212114),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Select type',
                    style: TextStyle(
                      color: Color(0xff212121),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 32,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 8,
                        );
                      },
                      itemBuilder: (context, index) {
                        final nameButtons = brancd[index];
                        return TextButton(
                          onPressed: () {
                            setState(
                              () {
                                isSelected = index;
                              },
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xff14000000),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(68),
                                side: BorderSide(
                                  color: index == isSelected
                                      ? const Color.fromARGB(255, 192, 155, 243)
                                      : const Color(0xff14000000),
                                ),
                              ),
                            ),
                          ),
                          child: Text(
                            '${nameButtons.name}',
                            style: TextStyle(
                              color: index == isSelected
                                  ? const Color(0xff6200EE)
                                  : const Color(0xff61000000),
                            ),
                          ),
                        );
                      },
                      itemCount: brancd.length),
                ),
                const Divider(
                  color: Color(0xff21212114),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Friends',
                    style: TextStyle(
                      color: Color(0xff212121),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage(Assets.image1),
                  ),
                  title: const Text(
                    'Corey George',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: const Text(
                    'Developer',
                    style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                    color: const Color(0xffCF6679),
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage(Assets.image2),
                  ),
                  title: const Text(
                    'Ahmad Vetrovs',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: const Text(
                    'Developer',
                    style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                    color: const Color(0xffCF6679),
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage(Assets.image3),
                  ),
                  title: const Text(
                    'Cristofer Workman',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: const Text(
                    'Developer',
                    style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                    color: const Color(0xffCF6679),
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage(Assets.image4),
                  ),
                  title: const Text(
                    'Tiana Korsgaard',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: const Text(
                    'Developer',
                    style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                    color: const Color(0xffCF6679),
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage(Assets.lobov),
                  ),
                  title: const Text(
                    'Artem Lobov',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: const Text(
                    'Master X God',
                    style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                    color: const Color(0xffCF6679),
                  ),
                ),
              ],
            ),
          ),
        ),  
      ),
    );
  }
}