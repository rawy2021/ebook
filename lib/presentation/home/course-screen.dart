import 'package:ebook/Utils/Constants/constatnts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/description-section.dart';
import '../widget/video-section.dart';
class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key,
    required this.img
   }) : super(key: key);
     final String img;
  @override
  State<CourseScreen> createState() => _CourseScreenState();
}
class _CourseScreenState extends State<CourseScreen> {
   bool isVideoSection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: ColorApp.whaitColor,
        elevation: 0,
        centerTitle: true,
        title: Text(widget.img,
        style: const TextStyle(
          fontWeight:FontWeight.bold,
          letterSpacing: 1
        ),
        ),
        actions: const [
          Padding(padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.notifications,
          size: 28,
          color: ColorApp.primaryColor,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorApp.subjectColor,
                image: DecorationImage(
                  image: AssetImage("assets/images/${widget.img}.png"),
                )
              ),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: ColorApp.whaitColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(CupertinoIcons.play_arrow_solid,
                  color: ColorApp.primaryColor,
                  size: 44,),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Text("${widget.img} Complete Sessions",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600
            ),),
            const SizedBox(height: 5,),
            const Text("Created By Mohamed Rawy",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400
              ),),
            const SizedBox(height: 5,),
            const Text("55 Lessons",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal
              ),),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              decoration: BoxDecoration(
                color: ColorApp.subjectColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color:isVideoSection? ColorApp.primaryColor : ColorApp.primaryColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideoSection=false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 15),
                        child: const Text("Vedio",
                          style:TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: ColorApp.whaitColor
                          ) ,),
                      ),
                    ),
                  ),
                  Material(
                    color:isVideoSection ? ColorApp.primaryColor.withOpacity(0.5) :ColorApp.primaryColor ,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideoSection=true;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 15),
                        child: const Text("Description",
                          style:TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: ColorApp.whaitColor
                          ) ,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            isVideoSection ?  const DescriptionSection() : VideoSection(),


          ],
        ),



      ),
    );
  }
}
