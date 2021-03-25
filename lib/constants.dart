import 'package:flutter/material.dart';

final double kMainPadding = 14;
final String kMainLogo = 'images/blacklogo.png';
final String kListImage = 'images/doc.jpg';
final String kHomeOne = 'images/home1.jpg';
final String kHomeThree = 'images/home3.jpg';
final String kHomeTwo = 'images/home2.jpg';
final String kHomeFour = 'images/home4.jpg';
final String kHomeFive = 'images/home5.jpg';
final String kFontFamily = 'OpenSans';

Widget headingText(String heading) {
  return Padding(
    padding: EdgeInsets.only(left: kMainPadding),
    child: Text(
      heading,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontFamily: 'OpenSans',
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

Widget cardTag(String houseState, Color color) {
  return Container(
    padding: EdgeInsets.all(5),
    height: 24,
    width: 69,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Text(
      houseState,
      style: TextStyle(
        color: Colors.white,
        fontSize: 10,
        //  fontWeight: FontWeight.w500,
        fontFamily: 'OpenSans',
      ),
      textAlign: TextAlign.center,
    ),
  );
}
