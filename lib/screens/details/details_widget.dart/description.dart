import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_field/screens/details/details_widget.dart/second_card.dart';
import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: WidgetConstant.border,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardHeading(
              heading: "Description",
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '''Lorem  ipsum  dolor sit amet,  consectetur  adipiscing elit, sed do eiusmod  tempor incididunt  ut  labore  et  dolore    magna aliqua. Dictum  sit amet justo donec enim diam  vulputate  ut. Justo donec enim diam vulputate ut pharetra sit.''',
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
