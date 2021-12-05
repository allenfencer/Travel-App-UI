// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vcg_task1/globalWidgets/custom_button.dart';
import 'package:vcg_task1/globalWidgets/search_icon.dart';
import 'package:vcg_task1/screens/homepage.dart';

class ExploreCity extends StatefulWidget {
  const ExploreCity({Key? key}) : super(key: key);

  @override
  State<ExploreCity> createState() => _ExploreCityState();
}

class _ExploreCityState extends State<ExploreCity> {
  int _currentPage = 0;
  List<String> images = [
    'assets/london.png',
    'assets/amsterdamn.png',
    'assets/london.png',
    'assets/amsterdamn.png',
  ];

  List<String> cityNames = [
    'LONDON',
    'AMSTERDAM',
    'LONDON',
    'AMSTERDAM',
  ];
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          //background Image
          Container(
            height: _height,
            width: _width,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                image: DecorationImage(
                    image: AssetImage(images[_currentPage]),
                    fit: BoxFit.cover)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
          ),
          Positioned(
            top: 46,
            left: 29,
            child: Text(
              'LET\'S GO!',
              style: GoogleFonts.lato(
                  color: Color(
                    0xffEA8246,
                  ),
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
              top: 55,
              right: 8,
              child: SearchButton(
                color: Colors.white,
              )),
          Positioned(
            top: 76,
            left: 0,
            child: SizedBox(
              width: 213,
              child: Divider(
                thickness: 2,
                color: Color(0xffffffff),
              ),
            ),
          ),
          Positioned(
            top: 76,
            left: 225,
            child: SizedBox(
              width: 44,
              child: Divider(
                thickness: 2,
                color: Color(0xffffffff),
              ),
            ),
          ),
          Positioned(
            top: 76,
            left: 279,
            child: SizedBox(
              width: 25,
              child: Divider(
                thickness: 2,
                color: Color(0xffffffff),
              ),
            ),
          ),
          Positioned(
              top: 85,
              left: 27,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('Choose',
                      style: GoogleFonts.playfairDisplay(
                          color: Colors.black54, fontSize: 40)),
                  Text(
                    'your City',
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.black54,
                      fontSize: 40,
                    ),
                  ),
                ],
              )),
          //PageView Carousel
          Positioned(
            left: 27,
            right: 27,
            top: 200,
            child: Container(
              padding:
                  EdgeInsets.only(left: 14, right: 14, top: 16, bottom: 65),
              height: 451,
              width: 321,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: PageView.builder(
                itemCount: images.length,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    clipBehavior: Clip.antiAlias,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.fill,
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 157,
            left: 148,
            child: Container(
              height: 25,
              width: 128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  images.length,
                  (indexDots) => Container(
                    margin: EdgeInsets.only(left: 3, right: 3),
                    width: _currentPage == indexDots ? 25 : 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: const Color(0xff72978F),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 190,
            left: 109,
            right: 107,
            child: Align(
              child: Text(
                cityNames[_currentPage],
                style: GoogleFonts.lato(fontSize: 24),
              ),
            ),
          ),
          Positioned(
              bottom: 33,
              left: 27,
              right: 27,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomePage(
                                cityName: cityNames[_currentPage],
                              )));
                },
                child: CustomButton(
                  buttonText: 'EXPLORE THE CITY',
                  color: Colors.black87.withOpacity(0.1),
                ),
              ))
        ],
      ),
    );
  }
}
