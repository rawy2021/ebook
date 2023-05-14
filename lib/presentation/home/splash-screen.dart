import 'package:ebook/Utils/Constants/constatnts.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CircleAvatar(
        radius: 300,
        backgroundImage: AssetImage(ImageApp.splashImage),)

      );
  }
}
