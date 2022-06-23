import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_where/by_spec.dart';
import 'package:test_where/colors.dart';
import 'package:test_where/components.dart';
import 'package:test_where/create_pdf.dart';
import 'package:test_where/display_hor.dart';

class EmployeesList extends StatefulWidget {
  const EmployeesList({Key key}) : super(key: key);

  @override
  State<EmployeesList> createState() => _EmployeesListState();
}

class _EmployeesListState extends State<EmployeesList> {
  final searchController = TextEditingController();
  String searchText;
  final database = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(
                        color: normalFontColor,
                        fontFamily: 'hurra',
                        fontSize: 14,
                      ),
                      controller: searchController,
                      onChanged: (value) {
                        setState(() {
                          setState(() {
                            searchText = value;
                          });
                        });
                      },
                      cursorColor: selectedColor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'بحث بواسطة الاسم',
                        hintStyle: TextStyle(
                          color: normalFontColor,
                          fontSize: 14,
                          fontFamily: 'hurra',
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => BySpec()),
                      ));
                    },
                    child: Image.asset(
                      'icons/search.png',
                      height: 24,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => DisplayHorez()),
                      ));
                    },
                    child: Image.asset(
                      'icons/back.png',
                      height: 24,
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 3,
                color: normalFontColor,
                height: 10,
                // endIndent: 16,
                // indent: 16,
              ),
              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream: (searchText == null || searchText?.trim() == '')
                      ? FirebaseFirestore.instance
                          .collection('employees')
                          .where('type', isEqualTo: 'تدريسي')
                          .where('collage',
                              isEqualTo: 'الكلية التقنية الادارية / موصل')
                          .snapshots()
                      : FirebaseFirestore.instance
                          .collection('employees')
                          .where('nameList', arrayContains: searchText)
                          .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    }
                    switch (snapshot.connectionState) {
                      case ConnectionState.waiting:
                        return const Text('Loading...');
                      default:
                        return ListView(
                          children: snapshot.data.docs
                              .map((DocumentSnapshot document) {
                            return InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) {
                                      return Report(
                                        fullName: document['fullName'],
                                        birth: document['birth'],
                                        address: document['address'],
                                        vacOutSalBal: document['vacOutSalBal'],
                                        vacOutSal: document['vacOutSal'],
                                        vacBal: document['vacBal'],
                                        vac: document['vac'],
                                        ponish: document['ponish'],
                                        bonus: document['bonus'],
                                        thnx: document['thnx'],
                                        sal: document['sal'],
                                        level: document['level'],
                                        jobDeg: document['jobDeg'],
                                        dateCurPos: document['dateCurPos'],
                                        curPos: document['curPos'],
                                        dateSciTitle: document['dateSciTitle'],
                                        sciTitle: document['sciTitle'],
                                        allSer: document['allSer'],
                                        collSer: document['collSer'],
                                        adSer: document['adSer'],
                                        actSer: document['actSer'],
                                        reHireDate: document['reHireDate'],
                                        dateLeaveJob: document['dateLeaveJob'],
                                        dateFirstApp: document['dateFirstApp'],
                                        specSpec: document['specSpec'],
                                        genSpec: document['genSpec'],
                                        jobTitle: document['jobTitle'],
                                        collage: document['collage'],
                                        
                                      );
                                    }),
                                  ),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                                alignment: Alignment.topRight,
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      document['fullName'],
                                      style: TextStyle(
                                        fontFamily: 'hurra',
                                        color: optionFontColor,
                                        fontSize: 13,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          document['sciTitle'],
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
                                          document['curPos'],
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
                          }).toList(),
                        );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
