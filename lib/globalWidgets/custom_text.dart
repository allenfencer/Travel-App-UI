import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final Color? textColor;
  final double? textSize;
  final String text;
  final double? marginLeft;
  final double? marginTop;
  final double? marginBottom;

  final FontWeight? fweight;
  const CustomText(
      {Key? key,
      this.marginLeft,
      required this.text,
      this.fweight,
      this.marginTop,
      this.marginBottom,
      this.textSize,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: marginLeft ?? 24,
        bottom: marginBottom ?? 0,
        top: marginTop ?? 0,
      ),
      child: Text(
        text,
        style: GoogleFonts.lato(
            fontSize: textSize ?? 28,
            fontWeight: fweight ?? FontWeight.normal,
            color: textColor ?? Colors.black87),
      ),
    );
  }
}
