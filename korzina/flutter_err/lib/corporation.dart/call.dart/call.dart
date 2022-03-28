import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/news_colors.dart';
import 'package:flutter_application_1/constants/news_textStyle.dart';

 Call(BuildContext context, int id) {
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
    ),
    enableDrag: false,
    context: context,
    builder: (context) => Container(
      padding: const EdgeInsets.only(top: 30, right: 23, left: 23),
      height: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Позвонить',
                  style: Corporation.fontsSize20w7000xff2c2c2c),
              Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: CorporationColor.background,
                    borderRadius: BorderRadius.circular(50)),
                child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.clear)),
              )
            ],
          ),
          const SizedBox(height: 13),
          // Text('${info.name} ${info.surname} \n${info.patronymic}',
          //     style: Corporation.fontsSize16w4000xff2c2c2c),
          // const SizedBox(height: 51),
        ],
      ),
    ),
  );
}
