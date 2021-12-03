// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  final Color? color;
  const SearchButton({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      height: 50,
      width: 50,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(25), color: color),
      child: Icon(Icons.search, color: Colors.black87),
    );
  }
}
