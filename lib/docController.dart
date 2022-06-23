import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class DetailsController {
  uploadDetails(
    String address,
    String vacOutSalBal,
    String vacOutSal,
    String vacBal,
    String vac,
    String ponish,
    String bonus,
    String thnx,
    String sal,
    String level,
    String jobDeg,
    String dateCurPos,
    String curPos,
    String dateSciTitle,
    String sciTitle,
    String allSer,
    String collSer,
    String adSer,
    String actSer,
    String reHireDate,
    String dateLeaveJob,
    String dateFirstApp,
    String specSpec,
    String genSpec,
    String edu,
    String jobTitle,
    String birth,
    String collage,
    String fullName,
  ) async {
    List<String> splitName = fullName.split(' ');
    List<String> nameList = [];
    for (int i = 0; i < splitName.length; i++) {
      for (int j = 0; j < splitName[i].length; j++) {
        nameList.add(splitName[i].substring(0, j).toLowerCase());
      }
    }
    List<String> splitSpec = genSpec.split(' ');
    List<String> specList = [];
    for (int i = 0; i < splitSpec.length; i++) {
      for (int j = 0; j < splitSpec[i].length; j++) {
        specList.add(splitSpec[i].substring(0, j).toLowerCase());
      }
    }

    await FirebaseFirestore.instance.collection('employees').doc().set({
      'fullName': fullName,
      'collage': collage,
      'birth': birth,
      'jobTitle': jobTitle,
      'nameList': nameList,
      'genSpecList': specList,
      'edu': edu,
      'genSpec': genSpec,
      'specSpec': specSpec,
      'dateFirstApp': dateFirstApp,
      'dateLeaveJob': dateLeaveJob,
      'reHireDate': reHireDate,
      'actServ': actSer,
      'adServ': adSer,
      'collServ': collSer,
      'allServ': allSer,
      'sciTitle': sciTitle,
      'dateSciTitle': dateSciTitle,
      'curPos': curPos,
      'dateCurPos': dateCurPos,
      'jobDeg': jobDeg,
      'level': level,
      'sal': sal,
      'thnx': thnx,
      'bonus': bonus,
      'ponish': ponish,
      'vac': vac,
      'vacBal': vacBal,
      'vacOutSal': vacOutSal,
      'vacOutSalBal': vacOutSalBal,
      'address': address,
    });
  }

  //delete details
  // deleteDoc(String id) async {
  //   await FirebaseFirestore.instance.collection('details').doc(id).delete();
  // }

  //delete file
  // deleteFile(fileUrl) async {
  //   await FirebaseStorage.instance.refFromURL(fileUrl).delete();
  // }

}

class UploadData extends StatelessWidget {
  const UploadData({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController fullNameController = TextEditingController();
    TextEditingController collageController = TextEditingController();
    TextEditingController birthController = TextEditingController();
    TextEditingController jobTitleController = TextEditingController();
    TextEditingController eduController = TextEditingController();
    TextEditingController genSpecController = TextEditingController();
    TextEditingController specSpecController = TextEditingController();
    TextEditingController dateFirstAppController = TextEditingController();
    TextEditingController dateLeaveJobController = TextEditingController();
    TextEditingController reHireDateController = TextEditingController();
    TextEditingController actSerController = TextEditingController();
    TextEditingController adSerController = TextEditingController();
    TextEditingController collSerController = TextEditingController();
    TextEditingController allSerController = TextEditingController();
    TextEditingController sciTitleController = TextEditingController();
    TextEditingController dateSciTitleController = TextEditingController();
    TextEditingController curPosController = TextEditingController();
    TextEditingController dateCurPosController = TextEditingController();
    TextEditingController jobDegController = TextEditingController();
    TextEditingController levelController = TextEditingController();
    TextEditingController salController = TextEditingController();
    TextEditingController thnxController = TextEditingController();
    TextEditingController bonusController = TextEditingController();
    TextEditingController ponishController = TextEditingController();
    TextEditingController vacController = TextEditingController();
    TextEditingController vacBalController = TextEditingController();
    TextEditingController vacOutSalController = TextEditingController();
    TextEditingController vacOutSalBalController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('+'),
        onPressed: () {
          DetailsController().uploadDetails(
            addressController.text,
            vacOutSalBalController.text,
            vacOutSalController.text,
            vacBalController.text,
            vacController.text,
            ponishController.text,
            bonusController.text,
            thnxController.text,
            salController.text,
            levelController.text,
            jobDegController.text,
            dateCurPosController.text,
            curPosController.text,
            dateSciTitleController.text,
            sciTitleController.text,
            allSerController.text,
            collSerController.text,
            adSerController.text,
            actSerController.text,
            reHireDateController.text,
            dateLeaveJobController.text,
            dateFirstAppController.text,
            specSpecController.text,
            genSpecController.text,
            eduController.text,
            jobTitleController.text,
            birthController.text,
            collageController.text,
            fullNameController.text,
          );
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: fullNameController,
                decoration: InputDecoration(hintText: 'االاسم'),
              ),
              TextField(
                controller: collageController,
                decoration: InputDecoration(hintText: 'التشميل'),
              ),
              TextField(
                controller: birthController,
                decoration: InputDecoration(hintText: 'ميلاد'),
              ),
              TextField(
                controller: jobTitleController,
                decoration: InputDecoration(hintText: 'عنوان وظيفي'),
              ),
              TextField(
                controller: eduController,
                decoration: InputDecoration(hintText: 'التحصيل'),
              ),
              TextField(
                controller: genSpecController,
                decoration: InputDecoration(hintText: 'التخصص العام'),
              ),
              TextField(
                controller: specSpecController,
                decoration: InputDecoration(hintText: 'التخصص الدقيق'),
              ),
              TextField(
                controller: dateFirstAppController,
                decoration: InputDecoration(hintText: 'تاريخ اول تعيين'),
              ),
              TextField(
                controller: reHireDateController,
                decoration: InputDecoration(hintText: 'تاريخ اعاده التعيين'),
              ),
              TextField(
                controller: actSerController,
                decoration: InputDecoration(hintText: 'الخدمة الفعليه'),
              ),
              TextField(
                controller: adSerController,
                decoration: InputDecoration(hintText: 'الخدمه المصافه'),
              ),
              TextField(
                controller: collSerController,
                decoration: InputDecoration(hintText: 'الخدمة الجامعية'),
              ),
              TextField(
                controller: allSerController,
                decoration: InputDecoration(hintText: 'الخدمة الكية'),
              ),
              TextField(
                controller: sciTitleController,
                decoration: InputDecoration(hintText: 'اللقب العلمي'),
              ),
              TextField(
                controller: dateSciTitleController,
                decoration: InputDecoration(hintText: 'تاريخ الحصول عاللقب'),
              ),
              TextField(
                controller: curPosController,
                decoration: InputDecoration(hintText: 'المنصب الحالي'),
              ),
              TextField(
                controller: dateCurPosController,
                decoration:
                    InputDecoration(hintText: 'تاريخ استلام المنصب الحالي'),
              ),
              TextField(
                controller: jobDegController,
                decoration: InputDecoration(hintText: 'الدرجه الوظيفية'),
              ),
              TextField(
                controller: levelController,
                decoration: InputDecoration(hintText: 'المرحلة'),
              ),
              TextField(
                controller: salController,
                decoration: InputDecoration(hintText: 'راتب'),
              ),
              TextField(
                controller: thnxController,
                decoration: InputDecoration(hintText: 'تشكرات'),
              ),
              TextField(
                controller: bonusController,
                decoration: InputDecoration(hintText: 'مكافئات'),
              ),
              TextField(
                controller: ponishController,
                decoration: InputDecoration(hintText: 'عقوبات'),
              ),
              TextField(
                controller: vacController,
                decoration: InputDecoration(hintText: 'اجازه براتب تام'),
              ),
              TextField(
                controller: vacBalController,
                decoration: InputDecoration(hintText: 'الرصيد'),
              ),
              TextField(
                controller: vacOutSalController,
                decoration: InputDecoration(hintText: 'بدون راتب'),
              ),
              TextField(
                controller: vacOutSalBalController,
                decoration: InputDecoration(hintText: 'رصيد'),
              ),
              TextField(
                controller: addressController,
                decoration: InputDecoration(hintText: 'العنوان'),
              ),
              TextField(
                controller: dateLeaveJobController,
                decoration: InputDecoration(hintText: 'تاريخ مغادرة المنصب'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
