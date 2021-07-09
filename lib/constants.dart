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

class ColorConstant {
  ColorConstant._();
  static const int kCardColor = 0xFF252324;
  static const int kMiniTextColor = 0xFF676767;
  static const int kGrennButton = 0xFF4BC08B;
  static const int kBorderColor = 0xFFDEDEDE;
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
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}

class WidgetConstant {
  WidgetConstant._();
  static var border = BoxDecoration(
    border: Border.all(
      width: 0.9,
      color: const Color(0xFFDEDEDE),
    ),
    borderRadius: BorderRadius.circular(5),
  );
}
