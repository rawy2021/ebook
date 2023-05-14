import 'package:ebook/Config/Routes.dart';
import 'package:ebook/Config/app-routes.dart';
import 'package:ebook/presentation/home/home-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/Constants/constatnts.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.6,
            decoration: const BoxDecoration(
              color: ColorApp.primaryColor,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(70))
            ),
            child: Image.asset(ImageApp.LogoImage,scale: 0.1,)
          ),
          Align(alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height /2.666,
            decoration: const BoxDecoration(
              color: ColorApp.primaryColor,
            ),
          ),
          ),
          Align(alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height /2.666,
              padding: const EdgeInsets.only(top: 40,bottom: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70))
              ),
              child: Column(
                children:  [
                  const Text("Learn EvryThing EnyTime",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,

                  ),
                  ),
                  const SizedBox(height: 15,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text("Reading practice to help you understand simple "
                        "information,words and sentences about known topics",
                     textAlign: TextAlign.center
                      ,style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey
                    ),
                    ),
                  ),

                  const SizedBox(height: 25,),
                  // Material(
                  //   child: InkWell(
                  //     onTap: (){
                  //     Get.to(HomeScreen());
                  //   },
                  //     child: Container(
                  //       padding: EdgeInsets.symmetric(horizontal: 90,vertical: 15),
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         color: ColorApp.primaryColor,
                  //       ),
                  //       child: Text("Get Start",
                  //         style:TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 22,
                  //         ) ,),
                  //
                  //     ),
                  //   ),
                  // ),
                  Container(
                    padding:  EdgeInsets.symmetric(horizontal: 90,vertical: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                              color: ColorApp.primaryColor,
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: ColorApp.primaryColor,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                        },
                      child: const Text('Start',
                        style: TextStyle(
                          color: Colors.white,
                                    fontSize: 22,
                        ),),
                    ),
                  )

                ],
              ),
            ),
          ),
        ],

      ),
    );
  }
}
