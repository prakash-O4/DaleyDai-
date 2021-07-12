import 'package:flutter/material.dart';
import 'package:text_field/constants.dart';
import 'package:text_field/screens/details/details_widget.dart/amenities.dart';
import 'package:text_field/screens/details/details_widget.dart/bank_offers.dart';
import 'package:text_field/screens/details/details_widget.dart/contact_card.dart';
import 'package:text_field/screens/details/details_widget.dart/description.dart';
import 'package:text_field/screens/details/details_widget.dart/details_card.dart';
import 'package:text_field/screens/details/details_widget.dart/first_card.dart';
import 'package:text_field/screens/details/details_widget.dart/locality.dart';
import 'package:text_field/screens/details/details_widget.dart/second_card.dart';
import 'package:text_field/screens/details/details_widget.dart/top_image.dart';
import 'package:text_field/widgets/card_list_horizontal.dart';
import 'package:text_field/widgets/info_card.dart';

class Details extends StatelessWidget {
  const Details();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_sharp,
            size: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              size: 20,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              size: 20,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopImage(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FirstCard(),
                  SizedBox(
                    height: 20,
                  ),
                  OverView(),
                  SizedBox(
                    height: 20,
                  ),
                  DetailsCard(),
                  SizedBox(
                    height: 20,
                  ),
                  Amenities(),
                  SizedBox(
                    height: 20,
                  ),
                  Description(),
                  SizedBox(
                    height: 20,
                  ),
                  Locality(),
                  SizedBox(
                    height: 20,
                  ),
                  ContactCard(),
                  SizedBox(
                    height: 20,
                  ),
                  InfoCard(
                    mainText: "Searching for Home Loans?",
                    info: "Find Home Loans",
                    infoSec: "Easily",
                    buttonText: "Home Loans",
                    cardImage: ImagePath.kMainLogo,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BankOffers(),
                  SizedBox(
                    height: 20,
                  ),
                  headingText("Recommended Properties"),
                  SizedBox(height: 10),
                  CardListHorizontal(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
