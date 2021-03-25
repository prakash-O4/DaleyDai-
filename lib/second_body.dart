import 'package:flutter/material.dart';

class SecondTop extends StatelessWidget {
  final String imagePath;
  final String bottomText;
  SecondTop({this.imagePath, this.bottomText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 93,
              width: 125,
              padding: EdgeInsets.all(17),
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
            Text(
              bottomText,
              style: TextStyle(
                fontSize: 11,
                color: Colors.black,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
