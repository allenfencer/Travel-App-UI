// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vcg_task1/globalWidgets/custom_icon.dart';
import 'package:vcg_task1/globalWidgets/custom_text.dart';

class FABExpanded extends StatelessWidget {
  const FABExpanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 160,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              CustomIcon(iconText: 'DISCOVER', iconLocation: 'compass.png'),
              CustomIcon(iconText: 'DO\'s', iconLocation: 'Group.png'),
              CustomIcon(iconText: 'DONE\'s', iconLocation: 'Vector.png'),
              CustomIcon(iconText: 'PROFILE', iconLocation: 'Ellipse.png'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Divider(
              color: Colors.white60,
              thickness: 1,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Icon(
                Icons.location_on,
                color: Colors.white70,
              ),
              CustomText(
                text: 'CHANGE CITY',
                textColor: Colors.white70,
                textSize: 18,
                marginBottom: 0,
              ),
              SizedBox(
                width: 120,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close,
                  color: Colors.white70,
                  size: 35,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
