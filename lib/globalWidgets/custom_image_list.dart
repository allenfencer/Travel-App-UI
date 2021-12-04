import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vcg_task1/globalWidgets/custom_text.dart';
import 'package:vcg_task1/globalWidgets/tags.dart';

class CustomImageList extends StatelessWidget {
  const CustomImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> activities = [
      'place2.png',
      'place3.png',
      'place1.png',
      'place2.png',
      'place3.png',
      'place1.png',
    ];

    List<String> activityTitle = [
      'Biking the city',
      'I Amsterdam',
      'Water Canals',
      'Biking the city',
      'I Amsterdam',
      'Water Canals'
    ];

    List<String> time = [
      '12 mins',
      '3 mins',
      '25 mins',
      '12 mins',
      '3 mins',
      '25 mins',
    ];
    return Container(
      padding: const EdgeInsets.only(left: 15),
      height: 200,
      child: ListView.builder(
          itemCount: activities.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    margin: const EdgeInsets.only(left: 8, right: 8),
                    clipBehavior: Clip.antiAlias,
                    height: 150,
                    width: 230,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Image.asset(
                      'assets/${activities[index]}',
                      fit: BoxFit.fill,
                      color: Colors.black.withOpacity(0.2),
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                  Positioned(
                      right: 20,
                      top: 10,
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
                          // ignore: prefer_const_constructors
                          child: Tags(
                            height: 25,
                            tag: '4.2',
                            textSize: 14,
                            icons: Icons.star,
                            color: const Color(0xff000026).withOpacity(0.2),
                            textColor: const Color(0xffffffff),
                          ),
                        ),
                      ))
                ]),
                const SizedBox(
                  height: 5,
                ),
                CustomText(
                  text: activityTitle[index],
                  textSize: 20,
                  marginLeft: 10,
                  fweight: FontWeight.normal,
                ),
                const SizedBox(
                  height: 3,
                ),
                CustomText(
                  text: time[index],
                  textSize: 16,
                  marginLeft: 10,
                )
              ],
            );
          }),
    );
  }
}
