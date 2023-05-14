import 'package:flutter/material.dart';
import '../../Utils/Constants/constatnts.dart';
class Subject extends StatelessWidget {
  final String image;
  final String textTitle;
  //final Function onTap;
   Subject({Key? key,
     required this.image,
     required this.textTitle,
    // required this.onTap,
     //required this.onTap

   }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorApp.subjectColor,
      ),
      child: Column(
        children: [
          Image.asset(image,width: 160,height: 150,),
          Text(textTitle,style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600
          ),),
        ],
      ),
    );
  }
}
