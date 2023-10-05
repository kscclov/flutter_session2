import 'package:flutter/material.dart';
import 'package:flutter_beginning/widget/picture_main.dart';
import 'package:flutter_beginning/widget/picture_shape.dart';
import 'package:flutter_beginning/widget/button.dart';
import 'package:flutter_beginning/widget/button_text.dart';
import 'package:flutter_beginning/widget/text_place.dart';
import 'package:flutter_beginning/page/second_page.dart';
import 'package:flutter_beginning/page/fourth_page.dart';

class FirstScreen extends StatelessWidget {
  final String butSkip = "Пропустить";
  final String txt = "Анализы";
  final String txt2 = "Экспресс сбор и получение проб";
  
  
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ButtonText(
                      page: (context) => FourthScreen(),
                      txt: butSkip, 
                      width: 0.4,
                      height: 0.1, 
                      backgroundColor: const Color.fromARGB(0, 255, 255, 255), 
                      colortxt: Colors.blue
                      ),
                      SizedBox(width: screenWidth * 0.1,),
                    const PictureShape(
                      width: 0.5, 
                      height: 0.25, 
                    ), 
                  ],
                ),
                SizedBox(height: screenHeight * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextPlace(
                      txt: txt, 
                      size: 24,
                      st: FontWeight.bold,
                      backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                      colortxt: Colors.green,
                      width: 0.7,
                      align: TextAlign.center,
                      height: 0.06,
                    ),
                  ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextPlace(
                      txt: txt2, 
                      size: 16,
                      st: FontWeight.normal,
                      backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                      colortxt: Colors.grey,
                      width: 0.7,
                      height: 0.08,
                      align: TextAlign.center,
                    ),
                  ],
                  ),
                SizedBox(height: screenHeight * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonPush(
                      isEnabled: true,
                      size: 16,
                      txt: "Дальше", 
                      page: (context) => SecondScreen(),
                      colortxt: const Color.fromARGB(255, 255, 255, 255), 
                      width: 0.4, 
                      height: 0.09, 
                      backgroundColor: Color.fromARGB(255, 105, 126, 220),
                      )
                  ],
                ),
                SizedBox(height: screenHeight * 0.07),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   PictureMain(
                    picture: "assets/images/Illustration.jpg",
                      width: 0.6, 
                      height: 0.3, 
                    ), 
                  ]
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}