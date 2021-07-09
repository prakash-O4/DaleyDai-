import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_field/constants.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String location;
  const IconAndText({this.icon, this.location});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          icon,
          size: 13,
          color: Color(ColorConstant.kMiniTextColor),
        ),
        SizedBox(
          width: 3.9,
        ),
        Flexible(
          child: Text(
            location,
            style: GoogleFonts.openSans(
              textStyle: TextStyle(
                fontSize: 12,
                color: Color(ColorConstant.kMiniTextColor),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
