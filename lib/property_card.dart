import 'package:flutter/material.dart';
import 'package:text_field/constants.dart';

class PropertyCard extends StatelessWidget {
  final double cardWidth;
  final bool houseStateFlag;
  final String houseState;
  final String houseLocation, imagePath, houseFixLocation, price;
  PropertyCard(
      {this.houseStateFlag,
      this.houseState,
      this.houseFixLocation,
      this.houseLocation,
      this.imagePath,
      this.price,
      this.cardWidth});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.2),
      child: Container(
        // height: 320,
        width: cardWidth,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.16),
              blurRadius: 2,
              spreadRadius: 2,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Container(
                height: 209,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 10,
                      left: 10,
                      child: houseStateFlag == true
                          ? cardTag(
                              houseState,
                              Color(0xFFEC1C24),
                            )
                          : cardTag(
                              houseState,
                              Color(0xFF276EF1),
                            ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    houseLocation,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 16,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        houseFixLocation,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4, top: 4),
                    child: Text(
                      price,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
