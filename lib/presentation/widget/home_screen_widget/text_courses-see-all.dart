import 'package:flutter/material.dart';

class CoursesTextSeeAll extends StatelessWidget {
  const CoursesTextSeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("Courses",style:
          TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),),
          Text("See All",style:
          TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),)
        ],
      ),
    );
  }
}
