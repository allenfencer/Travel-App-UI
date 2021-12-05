import 'package:flutter/material.dart';
import 'package:vcg_task1/globalWidgets/custom_text.dart';

class CustomIcon extends StatefulWidget {
  final String iconText;
  final String iconLocation;
  const CustomIcon(
      {Key? key, required this.iconText, required this.iconLocation})
      : super(key: key);

  @override
  State<CustomIcon> createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
  bool selectedColor = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            selectedColor = !selectedColor;
          });
        },
        child: Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(5),
          height: 79,
          decoration: BoxDecoration(
            color: selectedColor ? Colors.grey.shade900 : Colors.black,
            borderRadius: BorderRadius.circular(23),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/${widget.iconLocation}'),
              // ignore: prefer_const_constructors
              CustomText(
                marginLeft: 0,
                text: widget.iconText,
                textSize: 14,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
