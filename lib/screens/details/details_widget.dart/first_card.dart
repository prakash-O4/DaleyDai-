import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_field/widgets/location_and_text.dart';

import '../../../constants.dart';

class FirstCard extends StatelessWidget {
  const FirstCard();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      // height: 170,
      width: width,
      decoration: WidgetConstant.border,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 16,
          bottom: 7,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "House For Sale At New Road",
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: IconAndText(
                    icon: Icons.location_on,
                    location: "New Road, Kathmandu",
                  ),
                ),
                Flexible(
                  child: IconAndText(
                    icon: Icons.timer,
                    location: "1 week ago",
                  ),
                ),
                Flexible(
                  child: IconAndText(
                    icon: Icons.visibility,
                    location: "100.3K",
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Price",
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  fontSize: 14,
                  color: Color(
                    ColorConstant.kMiniTextColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Rs 90,00,000",
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(
                    ColorConstant.kGrennButton,
                  ),
                ),
                onPressed: () {},
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Negotiable",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
