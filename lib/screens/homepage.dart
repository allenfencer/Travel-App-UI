// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vcg_task1/globalWidgets/activity_image.dart';
import 'package:vcg_task1/globalWidgets/attraction_list.dart';
import 'package:vcg_task1/globalWidgets/custom_image_list.dart';
import 'package:vcg_task1/globalWidgets/custom_text.dart';
import 'package:vcg_task1/globalWidgets/search_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black87,
        child: Icon(Icons.menu),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CustomText(
                    text: 'Discover,',
                    marginBottom: 0,
                    marginTop: 0,
                  ),
                  SearchButton(
                    color: Color(0xffF4F1EC),
                  ),
                ],
              ),
              CustomText(
                text: 'Amsterdam',
                marginBottom: 10,
                marginTop: 0,
                fweight: FontWeight.w600,
              ),
              AttractionList(),
              CustomText(
                text: 'Top Activities',
                textSize: 20,
                marginTop: 20,
                marginBottom: 15,
                textColor: Color(0xff666462),
              ),
              ActivityImage(),
              CustomText(
                text: 'Nearby Activities',
                marginTop: 15,
                marginBottom: 15,
                textSize: 20,
                textColor: Color(0xff666462),
              ),
              CustomImageList(),
              Container(
                height: 120,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(5)),
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Image.asset(
                  'assets/place4.png',
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
