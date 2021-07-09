import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_field/constants.dart';

class OverView extends StatelessWidget {
  const OverView();

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Container(
      width: _width,
      decoration: WidgetConstant.border,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardHeading(heading: "Overview"),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoomDetails(
                  icon: Icons.bathroom_outlined,
                  text: "Bathroom",
                  number: 2,
                ),
                RoomDetails(
                  icon: Icons.bedroom_parent_outlined,
                  text: "Garage",
                  number: 1,
                ),
                RoomDetails(
                  icon: Icons.bathroom_outlined,
                  text: "Area",
                  number: 2,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoomDetails(
                  icon: Icons.bathroom_outlined,
                  text: "Bedroom",
                  number: 3,
                ),
                RoomDetails(
                  icon: Icons.bedroom_baby_outlined,
                  text: "Living ",
                  number: 2,
                ),
                RoomDetails(
                  icon: Icons.bedroom_baby_outlined,
                  text: "Floors",
                  number: 5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardHeading extends StatelessWidget {
  final String heading;
  const CardHeading({this.heading});

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

class RoomDetails extends StatelessWidget {
  final String text;
  final int number;
  final IconData icon;
  const RoomDetails(
      {@required this.icon, @required this.number, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 20,
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            children: [
              Text(
                text,
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 3),
              Text(
                number.toString(),
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
