import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_field/constants.dart';

class ContactCard extends StatelessWidget {
  const ContactCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: WidgetConstant.border,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                child: CircleAvatar(
                  backgroundColor: Color(0xFFE0595E),
                  radius: 35,
                  child: Center(
                    child: Text(
                      "S",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SellerName",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Selleremail@gmail.com",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                        fontSize: 11,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      )),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "9812345678",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(
                        ColorConstant.kGrennButton,
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Icon(
                        //   Icons.call,
                        //   color: Colors.white,
                        //   size: 12,
                        // ),
                        // SizedBox(
                        //   width: 4,
                        // ),
                        Expanded(
                          child: Text(
                            "Contact",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
