import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/assets.dart';
import 'package:flutter_application_1/constants/news_colors.dart';
import 'package:flutter_application_1/constants/news_textStyle.dart';
import 'package:flutter_application_1/corporation.dart/rezume.dart/rezume.dart';
import 'package:flutter_application_1/corporation.dart/call.dart/call.dart';

class Sotrudniki extends StatefulWidget {
  const Sotrudniki({Key? key}) : super(key: key);

  @override
  _SotrudnikiState createState() => _SotrudnikiState();
}

class _SotrudnikiState extends State<Sotrudniki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CorporationColor.background,
      appBar: AppBar(
        title: Text('Сотрудники', style: Corporation.fontsSize20w7000xff2c2c2c),
        backgroundColor: CorporationColor.background,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xffe8e8e8),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                hintText: 'Поиск',
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "У кого сегодня день рождения",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3b81ea)),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage(Assets.perviy),
                  radius: 40,
                ),
                SizedBox(width: 19),
                CircleAvatar(
                  backgroundImage: AssetImage(Assets.vtoroy),
                  radius: 40,
                ),
                SizedBox(width: 19),
                CircleAvatar(
                  backgroundImage: AssetImage(Assets.tretiy),
                  radius: 40,
                ),
                SizedBox(width: 19),
                CircleAvatar(
                  backgroundImage: AssetImage(Assets.chetyri),
                  radius: 40,
                ),
                SizedBox(width: 19),
              ],
            ),
            const SizedBox(
              height: 23,
            ),
            Text('У кого завтра день рождения',
                style: Corporation.fontsSize16w7000xff2c2c2c),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage(Assets.vtoroy),
                  radius: 30,
                ),
                SizedBox(
                  width: 19,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(Assets.perviy),
                  radius: 30,
                ),
                SizedBox(width: 19),
                CircleAvatar(
                  backgroundImage: AssetImage(Assets.perviy),
                  radius: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 26,
            ),
            Text('Все сотрудники',
                style: Corporation.fontsSize16w7000xff2c2c2c),
            const SizedBox(
              height: 16,
            ),
            // 1
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Rezume1(),
                  ),
                );
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(Assets.perviy),
                ),
                title: Text(
                  'Жыпаркулов Мырзабек Жыпаркулович',
                  style: Corporation.fontsSize16w4000xff2c2c2c,
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.call_rounded),
                  color: Colors.green,
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Call(context, ),
                    //   ),
                    // );
                  },
                ),
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            // 2
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(Assets.vtoroy),
              ),
              title: InkWell(
                child: Text(
                  'Артыкбаев Расул Саткынович',
                  style: Corporation.fontsSize16w4000xff2c2c2c,
                ),
                onTap: () {},
              ),
              trailing: IconButton(
                icon: const Icon(Icons.call_rounded),
                color: Colors.green,
                onPressed: () {},
              ),
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            ),
            const SizedBox(
              height: 16,
            ),
            // 3
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(Assets.chetyri),
              ),
              title: InkWell(
                onTap: () {},
                child: Text(
                  'Турдукеев Кайрат Калысович',
                  style: Corporation.fontsSize16w4000xff2c2c2c,
                ),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.call_rounded),
                color: Colors.green,
                onPressed: () {},
              ),
              tileColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
      ),
    );
  }
}

// child: Text("Жыпаркулов Мырзабек Жыпаркулович", style: Corporation.fontsSize16w4000xff2c2c2c,),