import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_field/widgets/card_list_horizontal.dart';
import 'package:text_field/constants.dart';

class RecommendedProp extends StatelessWidget {
  const RecommendedProp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_sharp,
            size: 20,
            color: Colors.black,
          ),
        ),
        elevation: 1,
        title: Text(
          "Recommended Properties",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Text(
                  "Sort Properties by Type",
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 12,
                      color: Color(ColorConstant.kCardColor),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                padding: const EdgeInsets.all(9),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xFFF0F2F4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All Properties",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF676767),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      size: 20,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RecommendedCard(),
              RecommendedCard(),
              RecommendedCard(),
              RecommendedCard(),
              RecommendedCard(),
              RecommendedCard(),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  "Urgent Properties",
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              CardListHorizontal(),
            ],
          ),
        ),
      ),
    );
  }
}

class RecommendedCard extends StatelessWidget {
  const RecommendedCard();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Card(
        elevation: 10,
        child: Container(
          padding: EdgeInsets.all(0),
          height: 108,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 108,
                width: 149,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        ImagePath.kHomeThree,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Property Sale at Morang",
                        style: GoogleFonts.openSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 16,
                            color: Color(0xFF393939),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Flexible(
                            child: Text(
                              "Machhindra Chowk Morang",
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF393939),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Flexible(
                        child: Text(
                          "Rs 90,00,000",
                          style: GoogleFonts.openSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
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
