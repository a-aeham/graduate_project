import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test_where/display_hor.dart';
import 'package:test_where/by_name.dart';
import 'package:test_where/docController.dart';
import 'package:test_where/temp/profile_line.dart';
import 'package:test_where/splash.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
      Locale('ar', 'AE'),
    ],
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool firstsSelected = false;
  bool secondSelected = false;
  String firstChoice = '';
  String secondChoice = '';
  Image insttechmosulIcon = Image.asset('icons/insttechmosul.png');
  Icon checkIcon = const Icon(Icons.check);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe5e5e5),
      body: SafeArea(
        child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('employees')
                .where('type', isEqualTo: 'فني')
                .where('unv', isEqualTo: 'المعهد التقني - نينوى')
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                return ListView(
                  children:
                      snapshot.data.docs.map((DocumentSnapshot document) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: ListTile(
                            title: Text(
                              document['name'],
                              style: const TextStyle(
                                fontFamily: 'hurra',
                              ),
                            ),
                            subtitle: Text(document['type']),
                            leading: Text(
                              firstChoice,
                            ),
                            trailing: Text(secondChoice),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(75),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Transform.translate(
                              offset: const Offset(5, 0),
                              child: ChoiceChip(
                                backgroundColor: Colors.transparent,
                                selectedColor: Colors.blue,
                                avatar: firstChoice == true
                                    ? checkIcon
                                    : insttechmosulIcon,
                                label: const Text(
                                  'الكلية التقنية الادارية',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'hurra',
                                  ),
                                ),
                                selected: firstsSelected,
                                onSelected: (value) {
                                  setState(() {
                                    secondChoice = '';
                                    secondSelected = false;
                                    firstsSelected = true;
                                    firstChoice = 'First';
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Divider(
                            thickness: 2,
                            // height: 2,
                            color: Colors.blueGrey,
                          ),
                        ),
                        ChoiceChip(
                          padding: const EdgeInsets.all(10),
                          // side: const BorderSide(
                          //   style: BorderStyle.solid,
                          //   color: Colors.black,
                          //   width: 2,
                          // ),
                          backgroundColor: Color(0xFFe5e5e5),
                          selectedColor: Color(0xFFe5e5e5),
                          avatar: (secondSelected == true)
                              ? Image.asset(
                                  'icons/check.png',
                                  height: 64,
                                )
                              : insttechmosulIcon,
                          label: Text(
                            'الكلية التقنية الادارية',
                            style: TextStyle(fontSize: 16, fontFamily: 'hurra'),
                          ),
                          selected: secondSelected,
                          onSelected: (value) {
                            setState(() {
                              firstChoice = '';
                              firstsSelected = false;
                              secondSelected = true;
                              secondChoice = 'Second';
                            });
                          },
                        ),
                        ChoiceChip(
                          padding: const EdgeInsets.all(10),
                          // side: const BorderSide(
                          //   style: BorderStyle.solid,
                          //   color: Colors.black,
                          //   width: 2,
                          // ),
                          backgroundColor: Color(0xFFe5e5e5),
                          selectedColor: Color(0xFFe5e5e5),
                          avatar: (secondSelected == true)
                              ? Image.asset(
                                  'icons/check.png',
                                  height: 64,
                                )
                              : insttechmosulIcon,
                          label: Text(
                            'الكلية التقنية الادارية',
                            style: TextStyle(fontSize: 16, fontFamily: 'hurra'),
                          ),
                          selected: secondSelected,
                          onSelected: (value) {
                            setState(() {
                              firstChoice = '';
                              firstsSelected = false;
                              secondSelected = true;
                              secondChoice = 'Second';
                            });
                          },
                        ),
                        ChoiceChip(
                          padding: const EdgeInsets.all(10),
                          // side: const BorderSide(
                          //   style: BorderStyle.solid,
                          //   color: Colors.black,
                          //   width: 2,
                          // ),
                          backgroundColor: Color(0xFFe5e5e5),
                          selectedColor: Color(0xFFe5e5e5),
                          avatar: (secondSelected == true)
                              ? Image.asset(
                                  'icons/check.png',
                                  height: 64,
                                )
                              : insttechmosulIcon,
                          label: Text(
                            'الكلية التقنية الادارية',
                            style: TextStyle(fontSize: 16, fontFamily: 'hurra'),
                          ),
                          selected: secondSelected,
                          onSelected: (value) {
                            setState(() {
                              firstChoice = '';
                              firstsSelected = false;
                              secondSelected = true;
                              secondChoice = 'Second';
                            });
                          },
                        ),
                        ChoiceChip(
                          padding: const EdgeInsets.all(10),
                          // side: const BorderSide(
                          //   style: BorderStyle.solid,
                          //   color: Colors.black,
                          //   width: 2,
                          // ),
                          backgroundColor: Color(0xFFe5e5e5),
                          selectedColor: Color(0xFFe5e5e5),
                          avatar: (secondSelected == true)
                              ? Image.asset(
                                  'icons/check.png',
                                  height: 64,
                                )
                              : insttechmosulIcon,
                          label: Text(
                            'الكلية التقنية الادارية',
                            style: TextStyle(fontSize: 16, fontFamily: 'hurra'),
                          ),
                          selected: secondSelected,
                          onSelected: (value) {
                            setState(() {
                              firstChoice = '';
                              firstsSelected = false;
                              secondSelected = true;
                              secondChoice = 'Second';
                            });
                          },
                        ),
                        ChoiceChip(
                          padding: const EdgeInsets.all(10),
                          // side: const BorderSide(
                          //   style: BorderStyle.solid,
                          //   color: Colors.black,
                          //   width: 2,
                          // ),
                          backgroundColor: Color(0xFFe5e5e5),
                          selectedColor: Color(0xFFe5e5e5),
                          avatar: (secondSelected == true)
                              ? Image.asset(
                                  'icons/check.png',
                                  height: 64,
                                )
                              : insttechmosulIcon,
                          label: Text(
                            'الكلية التقنية الادارية',
                            style: TextStyle(fontSize: 16, fontFamily: 'hurra'),
                          ),
                          selected: secondSelected,
                          onSelected: (value) {
                            setState(() {
                              firstChoice = '';
                              firstsSelected = false;
                              secondSelected = true;
                              secondChoice = 'Second';
                            });
                          },
                        ),
                        ChoiceChip(
                          padding: const EdgeInsets.all(10),
                          // side: const BorderSide(
                          //   style: BorderStyle.solid,
                          //   color: Colors.black,
                          //   width: 2,
                          // ),
                          backgroundColor: Color(0xFFf4f4f0),
                          selectedColor: Color(0xFFf4f4f0),
                          avatar: (secondSelected == true)
                              ? Image.asset(
                                  'icons/check.png',
                                  height: 64,
                                )
                              : insttechmosulIcon,
                          label: Text(
                            'الكلية التقنية الادارية',
                            style: TextStyle(fontSize: 16, fontFamily: 'hurra'),
                          ),
                          selected: secondSelected,
                          onSelected: (value) {
                            setState(() {
                              firstChoice = '';
                              firstsSelected = false;
                              secondSelected = true;
                              secondChoice = 'Second';
                            });
                          },
                        ),
                        Container(
                          child: ListTile(
                            title: Text('اسم الموظف'),
                            subtitle: Text('العناون الوظيفي'),
                          ),
                          // height: 50,
                          width: 200,
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            gradient: LinearGradient(
                              colors: [Colors.transparent, Colors.redAccent],
                              begin: Alignment.centerLeft, end: Alignment.centerRight, tileMode: TileMode.clamp                             ),
                          ),
                        ),
                        
                        ChoiceChip(
                          padding: const EdgeInsets.all(10),
                          // side: const BorderSide(
                          //   style: BorderStyle.solid,
                          //   color: Colors.black,
                          //   width: 2,
                          // ),
                          backgroundColor: Color(0xFFf4f4f0),
                          selectedColor: Color(0xFFf4f4f0),
                          avatar: (secondSelected == true)
                              ? Image.asset(
                                  'icons/check.png',
                                  height: 64,
                                )
                              : insttechmosulIcon,
                          label: Text(
                            'الكلية التقنية الادارية',
                            style: TextStyle(fontSize: 16, fontFamily: 'hurra',),
                          ),
                          selected: secondSelected,
                          onSelected: (value) {
                            setState(() {
                              firstChoice = '';
                              firstsSelected = false;
                              secondSelected = true;
                              secondChoice = 'Second';
                            });
                          },
                        ),
                      ],
                    );
                  }).toList(),
                );
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}
