import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondTop extends StatelessWidget {
  final String imagePath;
  final String bottomText;
  SecondTop({this.imagePath, this.bottomText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 12, left: 7),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 93,
              width: 125,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(240, 242, 244, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                imagePath,
                height: 59,
                width: 92.8,
                alignment: Alignment.center,
                fit: BoxFit.contain,
              ),
              // child: Container(
              //   height: 59,
              //   width: 92.8,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage(imagePath),
              //       fit: BoxFit.cover,
              //       alignment: Alignment.center
              //     ),
              //   ),
              // ),
            ),
            SizedBox(
              height: 6,
            ),
            Expanded(
              child: Text(bottomText,
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 11,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
