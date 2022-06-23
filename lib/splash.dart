import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:test_where/colors.dart';
import 'package:test_where/display_hor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const DisplayHorez() ,
      duration: 4000,
      imageSize: 300,
      imageSrc: "icons/ntu_logo_bg.png",
      backgroundColor: bgColor,
    );
  }
}