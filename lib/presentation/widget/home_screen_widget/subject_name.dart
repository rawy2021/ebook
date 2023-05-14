import 'package:flutter/material.dart';
import '../../../Utils/Constants/constatnts.dart';
import '../../home/course-screen.dart';

class SubjectName extends StatelessWidget {

  List imageList = [
    "life",
    "English",
    "Math",
    "Geography",
    "History",
    "Philosophy",
    "Physics",
    "Chemistry",
    "Biology",
    "Continuous",
  ];

  SubjectName({super.key});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          itemCount: imageList.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (MediaQuery.of(context).size.height - 50 -25)/
                (2*340),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => CourseScreen( img:imageList[index] ,),));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorApp.subjectColor,
                ),
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.all(5),
                      child: Image.asset("assets/images/${imageList[index]}.png",width: 150,height: 50,),
                    ),
                    const SizedBox(height: 0,),
                    Text(imageList[index],
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                   // const SizedBox(height: 5,),
                    const Text("All Stages",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
