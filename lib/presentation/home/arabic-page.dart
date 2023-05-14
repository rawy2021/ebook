import 'package:ebook/Utils/Constants/constatnts.dart';
import 'package:flutter/material.dart';

import '../widget/subject.dart';
import 'course-screen.dart';

class ArabicPage extends StatelessWidget {
  const ArabicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.whaitColor,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ArabicPage(),));
                      },
                      child: Container(
                        child: Subject(image: ImageApp.geographyImage,
                          textTitle: 'Mohmaed Rawy',

                      ),
                    ),),
                    InkWell(
                      onTap: (){
                      //  Navigator.push(context, MaterialPageRoute(builder: (context) => ArabicPage(),));
                      },
                      child: Container(
                        child: Subject(image: ImageApp.geographyImage,
                          textTitle: 'Mohmaed Rawy',

                        ),
                      ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => ArabicPage(),));
                      },
                      child: Container(
                        child: Subject(image: ImageApp.geographyImage,
                          textTitle: 'Mohmaed Rawy',

                        ),
                      ),),
                    InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder:
                        //     (context) => CourseScreen()));
                      },
                      child: Container(
                        child: Subject(image: ImageApp.geographyImage,
                          textTitle: 'Mohmaed Rawy',

                        ),
                      ),),
                  ],
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
