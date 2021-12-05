// ignore_for_file: prefer_const_constructors
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:vcg_task1/globalWidgets/custom_button.dart';
import 'package:vcg_task1/globalWidgets/fab_expanded.dart';
import 'package:vcg_task1/screens/explore_city_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/loginBG.png',
                fit: BoxFit.fill,
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
                )),
            Positioned(
              top: 76,
              left: 0,
              child: SizedBox(
                width: 213,
                child: Divider(
                  thickness: 2,
                  color: Color(0xffE5E4DF),
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
                  color: Color(0xffE5E4DF),
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
                  color: Color(0xffE5E4DF),
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
                    Text('Hello,',
                        style: GoogleFonts.playfairDisplay(
                            color: Color(0xff72978F), fontSize: 45)),
                    Text(
                      'Leonard!',
                      style: GoogleFonts.playfairDisplay(
                        color: Colors.black,
                        fontSize: 45,
                      ),
                    ),
                  ],
                )),
            Positioned(
                bottom: 33,
                left: 27,
                right: 27,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ExploreCity()));
                  },
                  child: CustomButton(
                    buttonText: 'EXPLORE',
                    color: Colors.black,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
