import 'package:flutter/material.dart';
import 'package:text_field/widgets/property_card.dart';
import 'package:text_field/model/property_sample.dart';

class CardListHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      color: Colors.white,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: ClampingScrollPhysics(),
        itemCount: propertyModel.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: PropertyCard(
              cardWidth: MediaQuery.of(context).size.width - 100,
              houseState: propertyModel[index].houseState,
              houseStateFlag: propertyModel[index].isRent,
              houseFixLocation: propertyModel[index].houseFixLocation,
              houseLocation: propertyModel[index].houseLocation,
              imagePath: propertyModel[index].imagePath,
              price: propertyModel[index].price,
            ),
          );
        },
      ),
    );
  }
}
