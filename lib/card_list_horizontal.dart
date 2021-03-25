import 'package:flutter/material.dart';
import 'package:text_field/property_card.dart';
import 'package:text_field/property_sample.dart';

class CardListHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 318,
      padding: EdgeInsets.all(7),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: propertyModel.length,
        itemBuilder: (context, index) => PropertyCard(
          cardWidth: MediaQuery.of(context).size.width - 100,
          houseState: propertyModel[index].houseState,
          houseStateFlag: propertyModel[index].isRent,
          houseFixLocation: propertyModel[index].houseFixLocation,
          houseLocation: propertyModel[index].houseLocation,
          imagePath: propertyModel[index].imagePath,
          price: propertyModel[index].price,
        ),
      ),
    );
  }
}
