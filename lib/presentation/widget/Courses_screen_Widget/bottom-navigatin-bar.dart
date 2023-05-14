import 'package:ebook/presentation/home/home-screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../../../Utils/Constants/constatnts.dart';
import '../../Bottom_NavBar/menu.dart';
import '../../Bottom_NavBar/profail.dart';
import '../../Bottom_NavBar/quiz.dart';
import '../../Bottom_NavBar/setting.dart';

void main() => runApp(const MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  List screensPage = [
    const HomeScreen(),
    const ProfileScreen(),
    const Menu(),
    const Quiz(),
    const Setting(),
  ];
  int _selectIndex = 0;
  @override
  void initState() {
    _selectIndex =0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: ColorApp.whaitColor,
            //buttonBackgroundColor:Colors.blue,
            color: ColorApp.primaryColor,
          items: const <Widget>[
            Icon(Icons.home, size: 35,color: ColorApp.whaitColor,),
            Icon(Icons.person, size: 35,color: ColorApp.whaitColor,),
            Icon(Icons.list, size: 35,color: ColorApp.whaitColor,),
            Icon(Icons.quiz_outlined, size: 35,color: ColorApp.whaitColor,),
            Icon(Icons.settings, size: 35,color: ColorApp.whaitColor,),
          ],
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
               _selectIndex = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: screensPage[_selectIndex],
    );

  }

  }
