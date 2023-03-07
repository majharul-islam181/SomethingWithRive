import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:rive/rive.dart';

class OnbodingScreen extends StatefulWidget {
  const OnbodingScreen({super.key});

  @override
  State<OnbodingScreen> createState() => _OnbodingScreenState();
}

class _OnbodingScreenState extends State<OnbodingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [


           Positioned(
       
            width: MediaQuery.of(context).size.width * 1.2,
            bottom: 90,
            left: 100,
            child: Image.asset("assets/Backgrounds/Spline.png")),


        const  RiveAnimation.asset('assets/RiveAssets/shapes.riv', fit: BoxFit.cover,),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child:const SizedBox(),
            ),
          ),


         const SafeArea(
            child:  Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("Learn  design & Code",style: TextStyle(
                fontSize: 60,
                fontFamily: "Poppins",
                height: 1.2
              ),),
              

              
            )),
         
       
        ],
      ),
    );
  }
}