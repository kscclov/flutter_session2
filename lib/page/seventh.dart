import 'package:flutter/material.dart';
import 'package:flutter_beginning/widget/button.dart';
import 'package:flutter_beginning/widget/text_place.dart';
import 'package:flutter_beginning/widget/field.dart';
import 'package:flutter_beginning/widget/button_text.dart';
import 'package:flutter_beginning/page/eighth_page.dart';

import '../widget/pol.dart';


class SeventhScreen extends StatefulWidget {
  @override
  _SeventhScreenState createState() => _SeventhScreenState();
}

class _SeventhScreenState extends State<SeventhScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _famController = TextEditingController();
  TextEditingController _otchlController = TextEditingController();
  TextEditingController _birthdaylController = TextEditingController();
  TextEditingController _polController = TextEditingController();
  bool _isButtonEnabled = false;


  @override
    void dispose() {
    _nameController.dispose();
    _famController.dispose();
    _otchlController.dispose();
    _birthdaylController.dispose();
    _polController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    void _checkFields() {
      setState(() {
        _isButtonEnabled = _nameController.text.isNotEmpty &&
            _famController.text.isNotEmpty &&
            _birthdaylController.text.isNotEmpty &&
            _polController.text.isNotEmpty;
      });
    }

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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextPlace(
                      txt: "Создание карты пациента",
                      st: FontWeight.bold,
                      align: TextAlign.left,
                      width: 0.65, 
                      height: 0.12, 
                      backgroundColor: Colors.white, 
                      colortxt: Colors.black, 
                      size: 28),
                      ButtonText(
                        page: (context) => EighthScreen(),
                        txt: "Пропустить", 
                        width: 0.15,
                        height: 0.1, 
                        backgroundColor: const Color.fromARGB(0, 255, 255, 255), 
                        colortxt: Colors.blue
                      )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child:
                      TextPlace(
                      txt: "Без карты пациента вы не сможете заказать анализы.",
                      st: FontWeight.normal, 
                      width: 0.8, 
                      align: TextAlign.left,
                      height: 0.08, 
                      backgroundColor: Colors.white, 
                      colortxt: Colors.grey, 
                      size: 16)
                      )
                      ]
                    ),
                  const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child:
                      TextPlace(
                      txt: "В картах пациентов будут храниться результаты анализов вас и ваших близких.",
                      st: FontWeight.normal, 
                      width: 0.8, 
                      align: TextAlign.left,
                      height: 0.08, 
                      backgroundColor: Colors.white, 
                      colortxt: Colors.grey, 
                      size: 16)
                    )
                      ]
                    ),
                SizedBox(height: screenHeight * 0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Field(
                      width: 0.9, 
                      labtext: "Имя",
                      height: 0.09, 
                      colortxt: Colors.black45, 
                      mode: false, 
                      hinttxt: "Ксения",
                      onChange: (value) {
                        setState(() {
                          _nameController.text = value;
                          _checkFields();
                        });
                      },
                      controller: _nameController,
                    )
                  ],
                ),
                SizedBox(height: screenHeight * 0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Field(
                      width: 0.9, 
                      labtext: "Фамилия",
                      height: 0.09, 
                      colortxt: Colors.black45, 
                      mode: false, 
                      hinttxt: "Горбань",
                      onChange: (value) {
                        setState(() {
                          _famController.text = value;
                          _checkFields();
                        });
                      },
                      controller: _famController,
                    )
                  ],
                ),
                SizedBox(height: screenHeight * 0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Field(
                      width: 0.9, 
                      labtext: "Отчество",
                      height: 0.09, 
                      colortxt: Colors.black45, 
                      mode: false, 
                      hinttxt: "Максимовна",
                      onChange: (value) {
                        setState(() {
                          _otchlController.text = value;
                          _checkFields();
                        });
                      },
                      controller: _otchlController,
                    )
                  ],
                ),
                SizedBox(height: screenHeight * 0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Field(
                      width: 0.9, 
                      labtext: "Дата рождения",
                      height: 0.09, 
                      colortxt: Colors.black45, 
                      mode: false, 
                      hinttxt: "3 декабря 2004",
                      onChange: (value) {
                        setState(() {
                          _birthdaylController.text = value;
                          _checkFields();
                        });
                      },
                      controller: _birthdaylController,
                    )
                  ],
                ),
                SizedBox(height: screenHeight * 0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Pol(
                      width: 0.9, 
                      labtext: "Пол",
                      height: 0.09, 
                      colortxt: Colors.black45, 
                      mode: false, 
                      hinttxt: "",
                      onChange: (value) {
                        setState(() {
                           _polController.text = value; // Установка значения поля
                           _checkFields();
                        });
                      },
                      controller: _polController,
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
                      txt: "Создать", 
                      page: (context) => EighthScreen(),
                      colortxt: const Color.fromARGB(255, 255, 255, 255), 
                      width: 0.8, 
                      height: 0.09, 
                      backgroundColor: _isButtonEnabled
                          ? const Color.fromARGB(255,26,111,238) // Цвет активной кнопки
                          : const Color.fromARGB(255, 13, 33, 105),
                      )
                   ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
