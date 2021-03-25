import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:text_field/constants.dart';
import 'package:text_field/text_field_constant.dart';

class SellPropertyOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Text sellPropertyText(String headingText) {
      return Text(
        headingText,
        style: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
        ),
        title: Text(
          'SELL PROPERTY',
          style: TextStyle(
            fontFamily: kFontFamily,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 14,
          left: 7,
        ),
        child: Column(
          children: <Widget>[
            sellPropertyText('Road Size'),
            MasterTextField(
              hintText: 'Enter Road Size',
            ),
            MasterComboBox(),
          ],
        ),
      ),
    );
  }
}
