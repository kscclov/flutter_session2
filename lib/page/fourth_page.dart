import 'package:flutter/material.dart';
import 'package:flutter_beginning/widget/button.dart';
import 'package:flutter_beginning/page/first_page.dart';
import 'package:flutter_beginning/widget/text_place.dart';
import 'package:flutter_beginning/widget/field.dart';
import 'package:flutter_beginning/page/fifth_page.dart';


class FourthScreen extends StatefulWidget {
  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  TextEditingController _emailController = TextEditingController();
  bool _isButtonEnabled = false;


  @override
    void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.1,
                        child: Image.asset("assets/images/Hello.jpg", fit: BoxFit.fill,)
                    ),
                    SizedBox(width: screenWidth * 0.02,),
                    const TextPlace(
                      txt: "Добро пожаловать!",
                      st: FontWeight.bold,
                      align: TextAlign.left,
                      width: 0.8, 
                      height: 0.2, 
                      backgroundColor: Colors.white, 
                      colortxt: Colors.black, 
                      size: 32),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                    child : TextPlace(
                      txt: "Войдите, чтобы пользоваться функциями приложения",
                      st: FontWeight.normal, 
                      width: 0.7, 
                      align: TextAlign.left,
                      height: 0.1, 
                      backgroundColor: Colors.white, 
                      colortxt: Colors.black, 
                      size: 16)
                    ),
                  ]
                ),
                SizedBox(height: screenHeight * 0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Field(
                      width: 0.8, 
                      labtext: "Вход по E-mail",
                      height: 0.1, 
                      colortxt: Colors.black45, 
                      mode: false, 
                      hinttxt: "example@mail.ru",
                      onChange: (value) {
                        setState(() {
                          _isButtonEnabled = value.isNotEmpty;
                        });
                      },
                      controller: _emailController,
                    )
                  ],
                ),
                SizedBox(height: screenHeight * 0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonPush(
                      isEnabled: _isButtonEnabled ,
                      size: 16,
                      txt: "Далее", 
                      page: (context) => FifthScreen(),
                      colortxt: const Color.fromARGB(255, 255, 255, 255), 
                      width: 0.8, 
                      height: 0.09, 
                      backgroundColor: _isButtonEnabled
                          ? const Color.fromARGB(255, 105, 126, 220)// Цвет активной кнопки
                          : const Color.fromARGB(255, 13, 33, 105),
                      )
                   ],
                ),
                SizedBox(height:  screenHeight * 0.25,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextPlace(
                      txt: "Или войдите с помощью",
                      backgroundColor: Colors.white,
                      width: 0.8,
                      align: TextAlign.center,
                      height: 0.05,
                      colortxt: Colors.grey,
                      size: 16,
                      st: FontWeight.normal,
                    )
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonPush(
                      isEnabled: true,
                      size: 24,
                      page: (context) => FirstScreen(),
                      backgroundColor: Colors.white,
                      width: 0.8,
                      height: 0.1,
                      colortxt: Colors.black,
                      txt: "Войти с Яндекс",
                    )
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
