import 'package:ebook/Utils/Constants/constatnts.dart';
import 'package:flutter/material.dart';
import '../widget/home_screen_widget/appBar-home_screen.dart';
import '../widget/home_screen_widget/index-widget.dart';
import '../widget/home_screen_widget/subject_name.dart';
import '../widget/home_screen_widget/text_courses-see-all.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const AppBarHomeScreen(),
          const SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(12),
            child: Row(
              children:  const [
          IndexWidget(
            textTitle: 'Category',
            colorTitle: ColorApp.yallowColor,
            iconTitle: IconApp.categoryIcon,),
                SizedBox(width: 20,),
                IndexWidget(
                  textTitle: 'Classes',
                  colorTitle: ColorApp.blueColor,
                  iconTitle: IconApp.assessmentIcon),
                SizedBox(width: 20,),
                IndexWidget(
                  textTitle: 'BookStore',
                  colorTitle: ColorApp.green1Color,
                  iconTitle: IconApp.storeIcon),
                SizedBox(width: 20,),
                IndexWidget(
                  textTitle: 'Lesson Free',
                  colorTitle: ColorApp.red1Color,
                  iconTitle: IconApp.emoji_events_Icon,),
                SizedBox(width: 20,),
                IndexWidget(
                  textTitle: 'Live Course',
                  colorTitle: ColorApp.moveColor,
                  iconTitle: IconApp.video_libraryIcon,),
                SizedBox(width: 20,),
                IndexWidget(
                  textTitle: 'LeaderBoard',
                  colorTitle: ColorApp.green1Color,
                  iconTitle: IconApp.play_circle_fill_Icon),


              ],
            ),

          ),
          const CoursesTextSeeAll(),
          const SizedBox(height: 10,),
           SubjectName(),
        ],
      ),
    );
  }
}

