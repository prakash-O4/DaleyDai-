import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_field/constants.dart';
import 'package:text_field/screens/details/details_widget.dart/second_card.dart';

class Amenities extends StatelessWidget {
  const Amenities();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: WidgetConstant.border,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardHeading(
              heading: "Amenities",
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: AminitiesWidget(
                    icon: Icons.bedroom_parent_outlined,
                    text: "Bedroom",
                  ),
                ),
                Expanded(
                  child: AminitiesWidget(
                    icon: Icons.bathroom_outlined,
                    text: "Bathroom",
                  ),
                ),
                Expanded(
                  child: AminitiesWidget(
                    icon: Icons.local_parking,
                    text: "Parking",
                  ),
                ),
                Expanded(
                  child: AminitiesWidget(
                    icon: Icons.pool,
                    text: "Swimming Pool",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: AminitiesWidget(
                    icon: Icons.bedroom_parent_outlined,
                    text: "Bedroom",
                  ),
                ),
                Expanded(
                  child: AminitiesWidget(
                    icon: Icons.bathroom_outlined,
                    text: "Bathroom",
                  ),
                ),
                Expanded(
                  child: AminitiesWidget(
                    icon: Icons.park_outlined,
                    text: "Praking",
                  ),
                ),
                Expanded(
                  child: AminitiesWidget(
                    icon: Icons.wifi,
                    text: "Internet",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AminitiesWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const AminitiesWidget({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 28,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          text,
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
              fontSize: 11,
              color: Color(ColorConstant.kMiniTextColor),
            ),
          ),
        )
      ],
    );
  }
}
