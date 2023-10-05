import 'package:flutter/material.dart';

class Pol extends StatelessWidget {
  final double width;
  final double height;
  final Color colortxt;
  final String labtext;
  final String hinttxt;
  final bool mode;
  final ValueChanged<String>? onChange;
  final TextEditingController? controller;

  const Pol(
      {required this.width,
      this.controller,
      this.onChange,
      required this.labtext,
      required this.height,
      required this.colortxt,
      required this.mode,
      required this.hinttxt});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double rectangleWidth = screenWidth * width;
    double screenHeight = MediaQuery.of(context).size.height;
    double rectangleHeight = screenHeight * height - 4;

    return Container(
      width: rectangleWidth,
      height: rectangleHeight,
      decoration: BoxDecoration(
        color: const Color.fromARGB(156, 233, 229, 229),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: controller != null && controller!.text.isNotEmpty ? Colors.blue : const Color.fromARGB(156, 233, 229, 229),
          width: 2.0,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: rectangleWidth - 16,
          child: DropdownButtonFormField<String>(
            value: null,
            onChanged: (String? newValue) {
              if (onChange != null) {
                onChange!(newValue!);
              }
            },
            items: ['Мужской', 'Женский'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: labtext,
              labelStyle: const TextStyle(color: Colors.grey),
              hintText: hinttxt,
              hintStyle: TextStyle(color: colortxt),
            ),
          ),
        ),
      ),
    );
  }
}