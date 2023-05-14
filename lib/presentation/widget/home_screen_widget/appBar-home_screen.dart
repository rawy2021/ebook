import 'package:flutter/material.dart';

import '../../../Utils/Constants/constatnts.dart';

class AppBarHomeScreen extends StatelessWidget {
  const AppBarHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15,bottom: 10,right: 15,left: 15),
      decoration: const BoxDecoration(
          color: ColorApp.primaryColor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.dashboard,size: 22,color: Colors.white,),
              Spacer(),
              Icon(Icons.notification_add,size: 22,color: Colors.white,)
            ],
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Hello, Rawy",
              style:TextStyle(
                  color: ColorApp.whaitColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2
              ) ,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5,bottom: 20),
            width: MediaQuery.of(context).size.width,
            height: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: ColorApp.whaitColor,
                borderRadius: BorderRadius.circular(10)
            ),
            child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Here...",
                    hintStyle: TextStyle(
                        color: Colors.grey
                    ),
                    prefixIcon: Icon(Icons.search,size: 24,)
                )),
          )
        ],
      ),
    );
  }
}
