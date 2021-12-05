// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vcg_task1/globalWidgets/custom_icon.dart';
import 'package:vcg_task1/globalWidgets/custom_text.dart';

class FABExpanded extends StatefulWidget {
  const FABExpanded({Key? key}) : super(key: key);

  @override
  State<FABExpanded> createState() => _FABExpandedState();
}

class _FABExpandedState extends State<FABExpanded> {
  int selectedIndex = 0;
  List<Widget> icons = [
    CustomIcon(iconText: 'DISCOVER', iconLocation: 'compass.png'),
    CustomIcon(iconText: 'DO\'s', iconLocation: 'Group.png'),
    CustomIcon(iconText: 'DONE\'s', iconLocation: 'Vector.png'),
    CustomIcon(iconText: 'PROFILE', iconLocation: 'Ellipse.png'),
  ];
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return isPressed
        ? Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(left: 35),
            height: 180,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: icons),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Divider(
                    color: Colors.white60,
                    thickness: 1,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, bottom: 15),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.white70,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: CustomText(
                          text: 'CHANGE CITY',
                          textColor: Colors.white70,
                          textSize: 18,
                          marginBottom: 0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isPressed = !isPressed;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0, bottom: 15),
                        child: Icon(
                          Icons.close,
                          color: Colors.white70,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        : FloatingActionButton(
            onPressed: () {
              setState(() {
                isPressed = !isPressed;
              });
            },
            backgroundColor: Colors.black,
            child: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 28,
            ),
          );
  }
}
