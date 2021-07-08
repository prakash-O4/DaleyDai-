import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImagePath {
  ImagePath._();
  static final String kMainLogo = 'images/blacklogo.png';
  static final String kListImage = 'images/doc.jpg';
  static final String kHomeOne = 'images/home1.jpg';
  static final String kHomeThree = 'images/home3.jpg';
  static final String kHomeTwo = 'images/home2.jpg';
  static final String kHomeFour = 'images/home4.jpg';
  static final String kHomeFive = 'images/home5.jpg';
}

final double kMainPadding = 14;
final String kFontFamily = 'OpenSans';

Widget headingText(String heading) {
  return Padding(
    padding: EdgeInsets.only(left: kMainPadding),
    child: Text(
      heading,
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
          color: Colors.black,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

Widget cardTag(String houseState, Color color) {
  return Container(
    height: 24,
    width: 69,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(2),
    ),
    child: Center(
      child: Text(
        houseState,
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          //  fontWeight: FontWeight.w500,
          // fontFamily: 'OpenSans',
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}



        // color: Colors.black,
        // fontSize: 20,
        // fontFamily: 'OpenSans',
        // fontStyle: FontStyle.normal,
        // fontWeight: FontWeight.w300,
