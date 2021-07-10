import 'package:flutter/material.dart';
import 'package:text_field/widgets/card_list_horizontal.dart';
import 'package:text_field/constants.dart';
import 'package:text_field/widgets/info_card.dart';
import 'package:text_field/widgets/property_card.dart';
import 'package:text_field/screens/search_page.dart';
import 'package:text_field/widgets/second_body.dart';
import 'package:text_field/model/second_body_data.dart';
import 'package:text_field/screens/sell_property_page.dart';
import 'package:text_field/widgets/top_heading.dart';

class DaleyBody extends StatefulWidget {
  @override
  _DaleyBodyState createState() => _DaleyBodyState();
}

class _DaleyBodyState extends State<DaleyBody> {
  final TextEditingController searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //app bar with image and button
              TopBody(
                topButtonResponse: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SellPropertyOne(),
                    ),
                  );
                },
                textInput: searchText,
                buttonResponse: () {
                  setState(
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchPage(),
                        ),
                      );
                    },
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              headingText("Explore DaleyDai"),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 145,
                child: ListView.builder(
                  itemCount: secondData.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SecondTop(
                    imagePath: secondData[index].imagePath,
                    bottomText: secondData[index].bottomText,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              headingText('Urgent Properties'),
              SizedBox(
                height: 15,
              ),
              PropertyCard(
                cardWidth: MediaQuery.of(context).size.width,
                houseStateFlag: true,
                houseState: 'FOR SALE',
                houseFixLocation: 'New Road',
                houseLocation: 'New Road',
                price: 'Rs 90,00,000',
                imagePath: ImagePath.kHomeThree,
              ),
              SizedBox(
                height: 5,
              ),
              PropertyCard(
                cardWidth: MediaQuery.of(context).size.width,
                houseStateFlag: false,
                houseState: 'FOR RENT',
                houseFixLocation: 'New Road',
                houseLocation: 'New Road',
                price: 'Rs 90,00,000',
                imagePath: ImagePath.kHomeThree,
              ),
              SizedBox(
                height: 10,
              ),
              InfoCard(
                mainText: "Searching For Resource ?",
                info: "Find Resources",
                infoSec: "for Construction",
                cardImage: ImagePath.kMainLogo,
                buttonText: "Easy Construction",
              ),
              SizedBox(
                height: 10,
              ),
              headingText('Newly Listed Properties'),
              SizedBox(
                height: 5,
              ),
              CardListHorizontal(),
              SizedBox(
                height: 10,
              ),
              headingText('Recommended Properties'),
              SizedBox(
                height: 5,
              ),
              CardListHorizontal(),
              SizedBox(
                height: 10,
              ),
              InfoCard(
                mainText: "Are you an owner or dealer ?",
                info: "Sell PROPERTY",
                infoSec: "for FREE",
                cardImage: ImagePath.kMainLogo,
                buttonText: "SELL PROPERTY",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
