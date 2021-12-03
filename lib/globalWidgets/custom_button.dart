import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String buttonText;
  const CustomButton({
    Key? key,
    required this.color,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 39, sigmaY: 39),
        child: Container(
          // ignore: prefer_const_constructors
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          width: 321,
          height: 64,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            buttonText,
            // ignore: prefer_const_constructors
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
