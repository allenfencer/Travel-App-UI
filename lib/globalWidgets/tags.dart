import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  final Color? color;
  final String tag;
  final Color? textColor;
  final IconData? icons;
  const Tags(
      {Key? key, this.color, this.icons, required this.tag, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      height: 35,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(74), color: color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icons,
            color: textColor,
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            width: 5,
          ),
          Text(
            tag,
            style: TextStyle(
                color: textColor, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
