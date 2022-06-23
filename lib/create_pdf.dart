import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:test_where/colors.dart';

import 'mobile.dart' if (dart.library.html) 'web.dart';

class Report extends StatelessWidget {
  String address;
  String vacOutSalBal;
  String vacOutSal;
  String vacBal;
  String vac;
  String ponish;
  String bonus;
  String thnx;
  String sal;
  String level;
  String jobDeg;
  String dateCurPos;
  String curPos;
  String dateSciTitle;
  String sciTitle;
  String allSer;
  String collSer;
  String adSer;
  String actSer;
  String reHireDate;
  String dateLeaveJob;
  String dateFirstApp;
  String specSpec;
  String genSpec;
  String edu;
  String jobTitle;
  String birth;
  String collage;
  String fullName;
  Report({
    this.fullName,
    this.collage,
    this.birth,
    this.jobTitle,
    this.edu,
    this.genSpec,
    this.specSpec,
    this.dateFirstApp,
    this.dateLeaveJob,
    this.reHireDate,
    this.actSer,
    this.adSer,
    this.collSer,
    this.allSer,
    this.sciTitle,
    this.dateSciTitle,
    this.curPos,
    this.dateCurPos,
    this.jobDeg,
    this.level,
    this.sal,
    this.thnx,
    this.bonus,
    this.ponish,
    this.vac,
    this.vacBal,
    this.vacOutSal,
    this.vacOutSalBal,
    this.address,
  });

  Future<Uint8List> _readImageData(String name) async {
    final data = await rootBundle.load('images/$name');
    return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  }

  Future<List<int>> _readFontData() async {
    final ByteData bytes = await rootBundle.load('fonts/arial.ttf');
    return bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
  }

  Future<void> _createPDF({
    String fullName,
    String collage,
    String birth,
    String jobTitle,
    String genSpec,
    String specSpec,
    String dateFirstApp,
    String dateLeaveJob,
    String reHireDate,
    String adrSer,
    String adSer,
    String collSer,
    String allSer,
    String sciTitle,
    String dateSciTitle,
    String dateCurPos,
    String jobDeg,
    String level,
    String sal,
    String thnx,
    String bonus,
    String ponish,
    String vac,
    String vacBal,
    String vacOutSal,
    String vacOutSalBal,
    String address,
  }) async {
    PdfDocument document = PdfDocument();
    final page = document.pages.add();
    PdfGraphics graphics = page.graphics;
    PdfFont font = PdfTrueTypeFont(await _readFontData(), 16);

    page.graphics.drawImage(
        PdfBitmap(
          await _readImageData(
            'ntu.png',
          ),
        ),
        Rect.fromLTWH(0, 0, 110, 150));

    graphics.drawString(
        '\n\nوزارة التعليم العالي والبحث العلمي \n الجامعة التقنية الشمالية \nاستمارة خلاصة الخدمة للموظفين على الملاك الدائم\n _________________________________________________________ \n\n الاسم الرباعي واللقب : $fullName \n التشكيل الذي يعمل فيه : $collage \n محل وتاريخ الولادة : $birth \n العنوان الوظيفي الحالي : $jobTitle \n التحصيل العلمي : edu                          تاريخ الحصول عليه  : \n التخصص العام : $genSpec                          التخصص الدقيق : $specSpec \n تاريخ اول تعيين : $dateFirstApp \n تاريخ ترك الوظيفة : $dateLeaveJob                 تاريخ اعادة التعيين : $reHireDate \n الخدمة الفعلية : actSer                          الخدمة المضافة : $adSer \n الخدمة الجامعية : $collSer                          الخدمة الكلية : $allSer \n اللقب العلمي : $sciTitle                          تاريخ الحصول عليه : $dateSciTitle \n المنصب الحالي : $curPos                           تاريخ الاستلام : $dateCurPos \n الدرجة الوظيفية : $jobDeg                          المرحلة : $level \n مقدار الراتب الاسمي : $sal \n عدد التشكرات : $thnx                          عدد المكافئات : $bonus \n عدد العقوبات : $ponish \n مدة الاجازة بدون راتب المتمع بها : $vac                          الرصيد : $vacBal \n مدة الاجازة براتب تام المتمتع بها : $vacOutSal               الرصيد : $vacOutSalBal \n السكن الحالي : $address',
        font,
        brush: PdfBrushes.black,
        pen: PdfPens.black,
        bounds: Rect.fromLTWH(
            0, 0, page.getClientSize().width, page.getClientSize().height),
        format: PdfStringFormat(
            lineSpacing: 10,
            textDirection: PdfTextDirection.rightToLeft,
            alignment: PdfTextAlignment.right,
            paragraphIndent: 35));

    List<int> bytes = document.save();
    document.dispose();

    saveAndLaunchFile(bytes, 'Output.pdf');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 7,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: normalFontColor,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: FlatButton(
                  onPressed: () {
                    _createPDF();
                  },
                  child: Text(
                    'طباعة خلاصة الخدمة',
                    style: TextStyle(
                      fontFamily: 'hurra',
                      fontSize: 14,
                      color: bgColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
