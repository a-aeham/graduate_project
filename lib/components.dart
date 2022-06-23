import 'package:flutter/material.dart';
import 'package:test_where/colors.dart';

class Bubble extends StatelessWidget {
  const Bubble({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.transparent,
        elevation: 3,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
          decoration: BoxDecoration(
            color: optionColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: InkWell(
            onTap: () {
              print('Pressed');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'اسم الموظف',
                  style: TextStyle(
                    fontFamily: 'hurra',
                    color: optionFontColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'العنوان الوظيفي',
                  style: TextStyle(
                    fontFamily: 'hurra',
                    color: optionFontColor,
                    fontSize: 11,
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

class ProfileInfos extends StatelessWidget {
  const ProfileInfos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'الاسم الثلاثي',
                  style: TextStyle(
                    fontFamily: 'hurrabold',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: optionFontColor,
                  ),
                ),
                Text(
                  'عبدالله ايهم منيب',
                  style: TextStyle(
                    fontFamily: 'hurra',
                    fontSize: 13,
                    color: optionFontColor,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'محل وتاريخ الولادة',
                  style: TextStyle(
                    fontFamily: 'hurrabold',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: optionFontColor,
                  ),
                ),
                Text(
                  '3/10/1993 منصور/كرخ/بغداد',
                  style: TextStyle(
                    fontFamily: 'hurra',
                    fontSize: 13,
                    color: optionFontColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الشهادة والاختصاص العلمي',
              style: TextStyle(
                fontFamily: 'hurrabold',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: optionFontColor,
              ),
            ),
            Row(
              children: [
                Text(
                  'بكالوريوس',
                  style: TextStyle(
                    fontFamily: 'hurra',
                    fontSize: 14,
                    color: optionFontColor,
                  ),
                ),
                Text(
                  ' / ',
                  style: TextStyle(
                    fontFamily: 'hurra',
                    fontSize: 14,
                    color: optionFontColor,
                  ),
                ),
                Text(
                  'هندسة تقنيات الحاسوب',
                  style: TextStyle(
                    fontFamily: 'hurra',
                    fontSize: 14,
                    color: optionFontColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        Divider(
          thickness: 2,
          color: normalFontColor,
          height: 60,
        ),
      ],
    );
  }
}

class BubbleEmpl extends StatelessWidget {
  const BubbleEmpl({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
        alignment: Alignment.topRight,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'اسم الموظف',
              style: TextStyle(
                fontFamily: 'hurra',
                color: optionFontColor,
                fontSize: 13,
              ),
            ),
            Row(
              children: [
                Text(
                  'اللقب العلمي',
                  style: TextStyle(
                    fontFamily: 'hurra',
                    color: optionFontColor,
                    fontSize: 11,
                  ),
                ),
                Text(
                  ' / ',
                  style: TextStyle(
                    fontFamily: 'hurra',
                    color: optionFontColor,
                    fontSize: 11,
                  ),
                ),
                Text(
                  'المنصب الحالي',
                  style: TextStyle(
                    fontFamily: 'hurra',
                    color: optionFontColor,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: normalFontColor,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
