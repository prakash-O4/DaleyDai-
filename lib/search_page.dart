import 'package:flutter/material.dart';
import 'package:text_field/body.dart';
import 'package:text_field/constants.dart';
import 'package:text_field/main.dart';
import 'package:text_field/second_body.dart';
import 'package:text_field/second_body_data.dart';
import 'package:text_field/top_heading.dart';

class SearchPage extends StatelessWidget {
  final List placeName = [
    'Kathmandu',
    'Lalitpur',
    'Pokhara',
    'Birgung',
    'Dharan',
    'Itahari',
    'Biratnagar',
    'Chitwan',
    'Bhojpur'
  ];
  final TextEditingController searchText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(kMainPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TopBody(
                textInput: searchText,
                topButtonResponse: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomeApp(),
                    ),
                  );
                },
                buttonResponse: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular Areas',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Container(
                      height: 44,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: placeName.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Color(0xFFF0F2F4),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              placeName[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: kFontFamily,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              headingText('Explore DaleyDai'),
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
            ],
          ),
        ),
      ),
    );
  }
}
