import 'package:flutter/material.dart';
import 'package:text_field/screens/details/details_widget.dart/second_card.dart';

import '../../../constants.dart';

class Locality extends StatelessWidget {
  const Locality();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration:WidgetConstant.border,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CardHeading(heading: "Locality"),
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset(
              ImagePath.kHomeOne,
              fit: BoxFit.cover,
              height: 252,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}
