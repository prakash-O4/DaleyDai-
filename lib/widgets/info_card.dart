import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCard extends StatelessWidget {
  final String mainText;
  final String info;
  final String infoSec;
  final String cardImage;
  final String buttonText;
  InfoCard({
    @required this.mainText,
    @required this.infoSec,
    @required this.info,
    @required this.cardImage,
    @required this.buttonText,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.2),
      child: Container(
        padding: EdgeInsets.all(18),
        width: 362,
        decoration: BoxDecoration(
          color: Color(0xFFF0F2F4),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(mainText,
                style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "$info \n",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                      TextSpan(
                        text: infoSec,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  cardImage,
                  height: 82.75,
                  width: 100,
                ),
              ],
            ),
            Container(
              width: 120,
              child: ElevatedButton(
                onPressed: () {
                  print('Easy Construction');
                },
                child: Center(
                  child: Text(buttonText,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(12),
                  primary: Color(0xFFED2028),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
