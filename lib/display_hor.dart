// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:test_where/by_name.dart';
import 'package:test_where/colors.dart';

class DisplayHorez extends StatefulWidget {
  const DisplayHorez({Key key}) : super(key: key);

  @override
  State<DisplayHorez> createState() => _DisplayHorezState();
}

class _DisplayHorezState extends State<DisplayHorez> {
  bool one = false;
  String onec = '';
  bool two = false;
  String twoc = 'الكلية التقنية الادارية';
  bool three = false;
  String threec = 'الكلية التقنية الزراعية';
  bool four = false;
  String fourc = 'المعهد التقني / موصل';
  bool five = false;
  String fivec = 'المعهد التقني / نينوى';
  bool six = false;
  String sixc = 'الكلية التقنية الصحية والطبية / كركوك';
  bool seven = false;
  String sevenc = 'الكلية التقنية الهندسية / كركوك';
  bool eight = false;
  String eightc = 'المعهد التقني / كركوك';
  bool nine = false;
  String ninec = 'المعهد التقني / حويجة';
  bool ten = false;
  String tenc = 'المعهد التقني / الدور';
  bool eleven = false;
  String elevenc = 'اداري';
  bool twelve = false;
  String twelvec = 'تدريسي';
  bool thirteen = false;
  String thirteenc = 'فني';
  String selected = '';
  String type = '';

  Image insttechmosulIcon = Image.asset('icons/insttechmosul.png');
  Image insttechNinawaIcon = Image.asset('icons/insttechninawa.png');
  Image admnMosulIcon = Image.asset('icons/admnmosul.png');
  Image agrMosulIcon = Image.asset('icons/argmosul.png');
  Image engKrkIcon = Image.asset('icons/engkirkuk.png');
  Image instTechDourIcon = Image.asset('icons/insttechdour.png');
  Image insTechHawejaIcon = Image.asset('icons/insttechhaweja.png');
  Image instTechKrkIcon = Image.asset('icons/insttechkirkuk.png');
  Image instTechNinawaIcon = Image.asset('icons/insttechninawa.png');
  Image medKrkIcon = Image.asset('icons/medkirkuk.png');
  Image engMosulIcon = Image.asset('icons/engmosul.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Row(
                            children: [
                              Text(
                                'الجامعة التقنية الشمالية',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: normalFontColor,
                                  fontFamily: 'hurrabold',
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                width: 85,
                              ),
                              InkWell(
                                onTap: () {
                                  if (selected == '') {
                                    Fluttertoast.showToast(
                                      msg: 'رجاءا ، حدد التشكيل وصنف الموظف ',
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      backgroundColor: selectedColor,
                                      textColor: normalFontColor,
                                      fontSize: 16.0,
                                    );
                                  }
                                  if (type == '') {
                                    Fluttertoast.showToast(
                                      msg: 'رجاءا ، حدد التشكيل وصنف الموظف ',
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      backgroundColor: selectedColor,
                                      textColor: normalFontColor,
                                      fontSize: 16.0,
                                    );
                                  } else {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: ((context) => EmployeesList()),
                                    ));
                                  }
                                },
                                child: Image.asset(
                                  'icons/search.png',
                                  height: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 3,
                  color: optionColor,
                  height: 25,
                  endIndent: 20,
                  indent: 20,
                ),
                Transform.translate(
                  offset: const Offset(-12, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChoiceChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        side: BorderSide(
                          color: optionColor,
                          width: 1,
                        ),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: optionColor,
                        selectedColor: selectedColor,
                        // avatar: engMosulIcon,
                        label: Text(
                          'الكلية التقنية الهندسية / الموصل',
                          style: TextStyle(
                              color: normalFontColor,
                              fontSize: 14,
                              fontFamily: 'hurra'),
                        ),
                        selected: one,
                        onSelected: (value) {
                          setState(() {
                            one = true;
                            two = false;
                            three = false;
                            four = false;
                            five = false;
                            six = false;
                            seven = false;
                            eight = false;
                            nine = false;
                            ten = false;
                            onec = 'الكلية التنقية الهندسية / موصل';
                            selected = onec;
                            twoc = '';
                            threec = '';
                            fourc = '';
                            fivec = '';
                            sixc = '';
                            sevenc = '';
                            eightc = '';
                            ninec = '';
                            tenc = '';
                          });
                        },
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      ChoiceChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: optionColor,
                        selectedColor: selectedColor,
                        // avatar: admnMosulIcon,
                        label: Text(
                          'الكلية التقنية الادارية / موصل',
                          style: TextStyle(
                              color: normalFontColor,
                              fontSize: 14,
                              fontFamily: 'hurra'),
                        ),
                        selected: two,
                        onSelected: (value) {
                          setState(() {
                            one = false;
                            two = true;
                            three = false;
                            four = false;
                            five = false;
                            six = false;
                            seven = false;
                            eight = false;
                            nine = false;
                            ten = false;
                            onec = '';
                            twoc = 'الكلية التقنية الادارية / موصل';
                            selected = twoc;
                            threec = '';
                            fourc = '';
                            fivec = '';
                            sixc = '';
                            sevenc = '';
                            eightc = '';
                            ninec = '';
                            tenc = '';
                          });
                        },
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      ChoiceChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        side: BorderSide(
                          color: optionColor,
                          width: 1,
                        ),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: optionColor,
                        selectedColor: selectedColor,
                        //avatar: insttechmosulIcon,
                        label: Text(
                          'المعهد التقني / موصل',
                          style: TextStyle(
                              color: normalFontColor,
                              fontSize: 14,
                              fontFamily: 'hurra'),
                        ),
                        selected: three,
                        onSelected: (value) {
                          setState(() {
                            one = false;
                            two = false;
                            three = true;
                            four = false;
                            five = false;
                            six = false;
                            seven = false;
                            eight = false;
                            nine = false;
                            ten = false;
                            onec = '';
                            twoc = '';
                            threec = 'المعهد التقني / موصل';
                            selected = threec;
                            fourc = '';
                            fivec = '';
                            sixc = '';
                            sevenc = '';
                            eightc = '';
                            ninec = '';
                            tenc = '';
                          });
                        },
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      ChoiceChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        side: BorderSide(
                          color: optionColor,
                          width: 1,
                        ),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: optionColor,
                        selectedColor: selectedColor,
                        //avatar: agrMosulIcon,
                        label: Text(
                          'الكلية التقنية الزراعية',
                          style: TextStyle(
                              color: normalFontColor,
                              fontSize: 14,
                              fontFamily: 'hurra'),
                        ),
                        selected: four,
                        onSelected: (value) {
                          setState(() {
                            one = false;
                            two = false;
                            three = false;
                            four = true;
                            five = false;
                            six = false;
                            seven = false;
                            eight = false;
                            nine = false;
                            ten = false;
                            onec = '';
                            twoc = '';
                            threec = '';
                            fourc = 'الكلية التقنية الزراعية';
                            selected = fourc;
                            fivec = '';
                            sixc = '';
                            sevenc = '';
                            eightc = '';
                            ninec = '';
                            tenc = '';
                          });
                        },
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      ChoiceChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        side: BorderSide(
                          color: optionColor,
                          width: 1,
                        ),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: optionColor,
                        selectedColor: selectedColor,
                        //avatar: insttechNinawaIcon,
                        label: Text(
                          'المعهد التقني / نينوى',
                          style: TextStyle(
                              color: normalFontColor,
                              fontSize: 14,
                              fontFamily: 'hurra'),
                        ),
                        selected: five,
                        onSelected: (value) {
                          setState(() {
                            one = false;
                            two = false;
                            three = false;
                            four = false;
                            five = true;
                            six = false;
                            seven = false;
                            eight = false;
                            nine = false;
                            ten = false;
                            onec = '';
                            twoc = '';
                            threec = '';
                            fourc = '';
                            fivec = 'المعهد التقني / نينوى';
                            selected = fivec;
                            sixc = '';
                            sevenc = '';
                            eightc = '';
                            ninec = '';
                            tenc = '';
                          });
                        },
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      ChoiceChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        side: BorderSide(
                          color: optionColor,
                          width: 1,
                        ),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: optionColor,
                        selectedColor: selectedColor,
                        //avatar: medKrkIcon,
                        label: Text(
                          'الكلية التقنية الصحية والطبية / كركوك',
                          style: TextStyle(
                              color: normalFontColor,
                              fontSize: 14,
                              fontFamily: 'hurra'),
                        ),
                        selected: six,
                        onSelected: (value) {
                          setState(() {
                            one = false;
                            two = false;
                            three = false;
                            four = false;
                            five = false;
                            six = true;
                            seven = false;
                            eight = false;
                            nine = false;
                            ten = false;
                            onec = '';
                            twoc = '';
                            threec = '';
                            fourc = '';
                            fivec = '';
                            sixc = 'الكلية التقنية الصحية والطبية / كركوك';
                            selected = sixc;
                            sevenc = '';
                            eightc = '';
                            ninec = '';
                            tenc = '';
                          });
                        },
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      ChoiceChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        side: BorderSide(
                          color: optionColor,
                          width: 1,
                        ),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: optionColor,
                        selectedColor: selectedColor,
                        // avatar: engKrkIcon,
                        label: Text(
                          'الكلية التقنية الهندسية / كركوك',
                          style: TextStyle(
                              color: normalFontColor,
                              fontSize: 14,
                              fontFamily: 'hurra'),
                        ),
                        selected: seven,
                        onSelected: (value) {
                          setState(() {
                            one = false;
                            two = false;
                            three = false;
                            four = false;
                            five = false;
                            six = false;
                            seven = true;
                            eight = false;
                            nine = false;
                            ten = false;
                            onec = '';
                            twoc = '';
                            threec = '';
                            fourc = '';
                            fivec = '';
                            sixc = '';
                            sevenc = 'الكلية التقنية الهندسية / كركوك';
                            selected = sevenc;
                            eightc = '';
                            ninec = '';
                            tenc = '';
                          });
                        },
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      ChoiceChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        side: BorderSide(
                          color: optionColor,
                          width: 1,
                        ),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: optionColor,
                        selectedColor: selectedColor,
                        //avatar: instTechKrkIcon,
                        label: Text(
                          'المعهد التقني / كركوك',
                          style: TextStyle(
                              color: normalFontColor,
                              fontSize: 14,
                              fontFamily: 'hurra'),
                        ),
                        selected: eight,
                        onSelected: (value) {
                          setState(() {
                            one = false;
                            two = false;
                            three = false;
                            four = false;
                            five = false;
                            six = false;
                            seven = false;
                            eight = true;
                            nine = false;
                            ten = false;
                            onec = '';
                            twoc = '';
                            threec = '';
                            fourc = '';
                            fivec = '';
                            sixc = '';
                            sevenc = '';
                            eightc = 'المعهد التقني / كركوك';
                            selected = eightc;
                            ninec = '';
                            tenc = '';
                          });
                        },
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      ChoiceChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        side: BorderSide(
                          color: optionColor,
                          width: 1,
                        ),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: optionColor,
                        selectedColor: selectedColor,
                        //avatar: insTechHawejaIcon,
                        label: Text(
                          'المعهد التقني / حويجة',
                          style: TextStyle(
                              color: normalFontColor,
                              fontSize: 14,
                              fontFamily: 'hurra'),
                        ),
                        selected: nine,
                        onSelected: (value) {
                          setState(() {
                            one = false;
                            two = false;
                            three = false;
                            four = false;
                            five = false;
                            six = false;
                            seven = false;
                            eight = false;
                            nine = true;
                            ten = false;
                            onec = '';
                            twoc = '';
                            threec = '';
                            fourc = '';
                            fivec = '';
                            sixc = '';
                            sevenc = '';
                            eightc = '';
                            ninec = 'المعهد التقني / حويجة';
                            selected = ninec;
                            tenc = '';
                          });
                        },
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      ChoiceChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        side: BorderSide(
                          color: optionColor,
                          width: 1,
                        ),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: optionColor,
                        selectedColor: selectedColor,
                        //avatar: instTechDourIcon,
                        label: Text(
                          'المعهد التقني / الدور',
                          style: TextStyle(
                              color: normalFontColor,
                              fontSize: 14,
                              fontFamily: 'hurra'),
                        ),
                        selected: ten,
                        onSelected: (value) {
                          setState(() {
                            one = false;
                            two = false;
                            three = false;
                            four = false;
                            five = false;
                            six = false;
                            seven = false;
                            eight = false;
                            nine = false;
                            ten = true;
                            onec = '';
                            twoc = '';
                            threec = '';
                            fourc = '';
                            fivec = '';
                            sixc = '';
                            sevenc = '';
                            eightc = '';
                            ninec = '';
                            tenc = 'المعهد التقني / الدور';
                            selected = tenc;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 3,
                  color: optionColor,
                  height: 25,
                  endIndent: 20,
                  indent: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ChoiceChip(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      side: BorderSide(
                        color: optionColor,
                        width: 1,
                      ),
                      padding: const EdgeInsets.all(10),
                      backgroundColor: optionColor,
                      selectedColor: selectedColor,
                      //avatar: instTechDourIcon,
                      label: Text(
                        'اداري',
                        style: TextStyle(
                            color: normalFontColor,
                            fontSize: 14,
                            fontFamily: 'hurra'),
                      ),
                      selected: eleven,
                      onSelected: (value) {
                        setState(() {
                          eleven = true;
                          twelve = false;
                          thirteen = false;
                          elevenc = 'اداري';
                          type = elevenc;
                          twelvec = '';
                          thirteenc = '';
                        });
                      },
                    ),
                    ChoiceChip(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      side: BorderSide(
                        color: optionColor,
                        width: 1,
                      ),
                      padding: const EdgeInsets.all(10),
                      backgroundColor: optionColor,
                      selectedColor: selectedColor,
                      //avatar: instTechDourIcon,
                      label: Text(
                        'تدريسي',
                        style: TextStyle(
                            color: normalFontColor,
                            fontSize: 14,
                            fontFamily: 'hurra'),
                      ),
                      selected: twelve,
                      onSelected: (value) {
                        setState(() {
                          eleven = false;
                          twelve = true;
                          thirteen = false;
                          elevenc = '';
                          twelvec = 'تدريسي';
                          type = twelvec;
                          thirteenc = '';
                        });
                      },
                    ),
                    ChoiceChip(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      side: BorderSide(
                        color: optionColor,
                        width: 1,
                      ),
                      padding: const EdgeInsets.all(10),
                      backgroundColor: optionColor,
                      selectedColor: selectedColor,
                      //avatar: instTechDourIcon,
                      label: Text(
                        'فني',
                        style: TextStyle(
                            color: normalFontColor,
                            fontSize: 14,
                            fontFamily: 'hurra'),
                      ),
                      selected: thirteen,
                      onSelected: (value) {
                        setState(() {
                          eleven = false;
                          twelve = false;
                          thirteen = true;
                          elevenc = '';
                          twelvec = '';
                          thirteenc = 'فني';
                          type = thirteenc;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
