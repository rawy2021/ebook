import 'package:ebook/Utils/Constants/constatnts.dart';
import 'package:flutter/material.dart';

import 'custom-video.dart';

class VideoSection extends StatelessWidget {

  List videoTitle = [
    "introduction",
    "Lesson 1",
    "Lesson 2",
    "Lesson 3",
    "Lesson 4",
    "Lesson 5",
    "Lesson 6",
    "Lesson 7",
    "Lesson 8",
  ];

  VideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoTitle.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context,index){
        return InkWell(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                 VideoPlayerLesson(),));
          },
          child: ListTile(
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: index==0
                    ? ColorApp.primaryColor
                    : ColorApp.primaryColor.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.play_circle_fill,
                color: ColorApp.whaitColor,
                size: 30,
              ),
            ),
            title: Text("${videoTitle[index]}"),
            subtitle: const Text("55 min 40 sec"),
          ),
        );

        });
  }
}
