import 'package:flutter/material.dart';
import 'package:text_field/constants.dart';

class InfoCard extends StatelessWidget {
  final String mainText;
  final String info;
  final String infoSec;
  final String cardImage;
  final String buttonText;
  InfoCard(
      {this.mainText,
      this.infoSec,
      this.info,
      this.cardImage,
      this.buttonText});
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
            Text(
              mainText,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: 'OpenSans',
              ),
            ),
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
                      TextSpan(text: infoSec),
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
            ElevatedButton(
              onPressed: () {
                print('Easy Construction');
              },
              child: Text(
                buttonText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w600,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(12),
                primary: Color(0xFFED2028),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
