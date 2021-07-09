import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_field/screens/details/details_widget.dart/second_card.dart';

import '../../../constants.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard();

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
              heading: "Details",
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetailsText(
                    upperText: "Property Type", lowertext: "Residental"),
                DetailsText(upperText: "Property Area", lowertext: "2 Anna"),
                DetailsText(upperText: "Property Face", lowertext: "East"),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetailsText(upperText: "Road Size", lowertext: "20 Feet"),
                DetailsText(upperText: "Property ID", lowertext: "18923"),
                DetailsText(upperText: "Built Year", lowertext: "2020"),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    width: 90,
                    child: DetailsText(
                        upperText: "Distance From Main Road",
                        lowertext: "20 Feet"),
                  ),
                ),
                DetailsText(upperText: "Total Area", lowertext: "18923"),
                DetailsText(upperText: "Built Up Area", lowertext: "2020"),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetailsText(upperText: "Total Floors", lowertext: "4"),
                DetailsText(upperText: "Built Year", lowertext: "2020"),
                DetailsText(upperText: "Road Type", lowertext: "Pitch"),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetailsText(
                    upperText: "Furnishing", lowertext: "Full Furnished"),
                DetailsText(upperText: "Built Year", lowertext: "2010"),
              ],
            ),
            // GridView.builder(
            //   shrinkWrap: true,
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 3,
            //     mainAxisSpacing: 0,
            //     crossAxisSpacing: 0,
            //   ),
            //   itemCount: detailsModel.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return DetailsText(
            //       upperText: detailsModel[index].upperText,
            //       lowertext: detailsModel[index].lowerText,
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

class DetailsText extends StatelessWidget {
  final String lowertext;
  final String upperText;
  const DetailsText({@required this.upperText, @required this.lowertext});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            upperText,
            style: GoogleFonts.openSans(
              textStyle: TextStyle(
                fontSize: 11,
                color: Color(ColorConstant.kMiniTextColor),
              ),
            ),
          ),
          SizedBox(height: 3),
          Text(
            lowertext,
            style: GoogleFonts.openSans(
              textStyle: TextStyle(
                fontSize: 11,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
