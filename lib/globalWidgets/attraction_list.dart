import 'package:flutter/material.dart';

class AttractionList extends StatefulWidget {
  const AttractionList({Key? key}) : super(key: key);

  @override
  State<AttractionList> createState() => _AttractionListState();
}

class _AttractionListState extends State<AttractionList> {
  int currIndex = 0;
  List<String> attractions = [
    'ALL',
    'MUSEUMS',
    'HISTORICAL PLACES',
    'RESTAURANTS',
    'HOTELS',
    'PARKS',
    'CLUBS',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          itemCount: attractions.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currIndex = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                // ignore: prefer_const_constructors
                margin: EdgeInsets.only(left: 24, top: 10, bottom: 10),
                // ignore: prefer_const_constructors
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                height: 30,
                decoration: BoxDecoration(
                    // ignore: prefer_const_constructors
                    color:
                        // ignore: prefer_const_constructors
                        currIndex == index ? Color(0xffD5E5E2) : Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  attractions[index],
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
              ),
            );
          }),
    );
  }
}
