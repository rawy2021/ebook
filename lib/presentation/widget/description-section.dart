import 'package:flutter/material.dart';

import '../../Utils/Constants/constatnts.dart';
import 'custom-bottun.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 0),
    child: Column(
      children: [
        Text("Our searchable library of short texts offers a diverse mix of stories and perspectives. This multigenre, multimedia collection aligns with the Common Core's .",
        style: TextStyle(
          fontSize: 15,
          color: Colors.black.withOpacity(0.6),
        ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 5,),
        Column(
          children: [
            Row(
              children: const [
                Text("Course Length :",
                  style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20
                ),
                ),
                SizedBox(width: 15,),

                Icon(Icons.timer,size: 24,color: ColorApp.primaryColor,),
                SizedBox(width: 5,),
                Text("26 Hours",
                  style:TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ) ,),

              ],
            ),
            const SizedBox(height: 10,),

            Row(
              children: const [
                Text("Course Ratting :",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20
                ),
                ),
                SizedBox(width: 10,),
                Icon(Icons.star,size: 24,color: Colors.amberAccent,),
                SizedBox(width: 5,),
                Text("4.8",
                  style:TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ) ,),

              ],
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            CustomIconButton(
              onTap: () {},
              height: 45,
              width: 45,
              child: const Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: CustomIconButton(
                onTap: () {},
                color: ColorApp.primaryColor,
                height: 45,
                width: 45,
                child: const Text(
                  "Enroll Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),


      ],
    ),
    );

  }
}
