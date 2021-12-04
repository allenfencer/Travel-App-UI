import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vcg_task1/globalWidgets/custom_text.dart';
import 'package:vcg_task1/globalWidgets/tags.dart';

class ActivityImage extends StatelessWidget {
  const ActivityImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(5), boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 20,
                offset: const Offset(1, 5)),
          ]),
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/place1.png',
            color: Colors.black.withOpacity(0.25),
            colorBlendMode: BlendMode.darken,
            fit: BoxFit.fill,
          ),
        ),
        // ignore: prefer_const_constructors
        Positioned(
            bottom: 25,
            left: 10,
            // ignore: prefer_const_constructors
            child: CustomText(
              text: 'Taking a boat tour\nthrough canals',
              textColor: Colors.white,
              fweight: FontWeight.bold,
            )),
        const Positioned(
            left: 40,
            top: 20,
            child: Tags(
              tag: 'Centraal',
              icons: Icons.map_outlined,
              color: Color(0xffFFF0D8),
              textColor: Color(0xffD27C4A),
            )),
        Positioned(
            right: 30,
            top: 20,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
                // ignore: prefer_const_constructors
                child: Tags(
                  tag: '4.2',
                  icons: Icons.star,
                  color: const Color(0xff000026).withOpacity(0.2),
                  textColor: const Color(0xffffffff),
                ),
              ),
            ))
      ],
    );
  }
}
