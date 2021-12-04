import 'package:flutter/material.dart';
import 'package:vcg_task1/globalWidgets/custom_text.dart';

class CustomIcon extends StatelessWidget {
  final String iconText;
  final String iconLocation;
  const CustomIcon(
      {Key? key, required this.iconText, required this.iconLocation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      height: 79,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/$iconLocation'),
          // ignore: prefer_const_constructors
          CustomText(
            marginLeft: 0,
            text: iconText,
            textSize: 14,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
