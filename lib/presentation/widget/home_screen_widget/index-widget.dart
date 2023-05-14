import 'package:flutter/material.dart';

import '../../../Utils/Constants/constatnts.dart';

class IndexWidget extends StatelessWidget {

  final String textTitle;
  final Color  colorTitle;
  final Icon   iconTitle;

  const IndexWidget({super.key
    , required this.textTitle,
    required this.colorTitle,
    required this.iconTitle,

  });
  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
               Column(
                children: [
                  Container(
                    height : 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: colorTitle,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: iconTitle,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    textTitle,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

        ],
      ),
    );
  }
}


// List catNames = [
//   "Category",
//   "Classes",
//   "Free Courses",
//   "BookStore",
//   "Live Course",
//   "LeaderBoard"
// ];
// List<Color> catColor = [
//   const Color(0xFFFFCF2F),
//   const Color(0xFF6FE08D),
//   const Color(0xFF61BDFD),
//   const Color(0xFFFC7F7F),
//   const Color(0xFFCB84FB),
//   const Color(0xFF78E667),
// ];
// List<Icon> catIcons = [
//   const Icon(Icons.category,color: ColorApp.whaitColor,size: 30,),
//   const Icon(Icons.video_library,color: ColorApp.whaitColor,size: 30,),
//   const Icon(Icons.assessment,color: ColorApp.whaitColor,size: 30,),
//   const Icon(Icons.store,color: ColorApp.whaitColor,size: 30,),
//   const Icon(Icons.play_circle_fill,color: ColorApp.whaitColor,size: 30,),
//   const Icon(Icons.emoji_events,color: ColorApp.whaitColor,size: 30,),
// ];

