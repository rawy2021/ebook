import 'package:ebook/presentation/widget/Courses_screen_Widget/bottom-navigatin-bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: AnimatedSplashScreen(
      //   splashIconSize: 200,
      //   splashTransition: SplashTransition.rotationTransition,
      //   splash: SplashScreen(), nextScreen: WelcomScreen(),)
      home: const BottomNavBar(),
    );
  }
}

