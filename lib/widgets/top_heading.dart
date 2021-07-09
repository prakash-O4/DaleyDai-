import 'package:flutter/material.dart';
import 'package:text_field/constants.dart';
import 'package:text_field/screens/recom_prop.dart';

class TopBody extends StatefulWidget {
  final TextEditingController textInput;
  final Function buttonResponse;
  final Function topButtonResponse;
  TopBody({this.textInput, this.buttonResponse, this.topButtonResponse});

  @override
  _TopBodyState createState() => _TopBodyState();
}

class _TopBodyState extends State<TopBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 60,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImagePath.kMainLogo),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.topButtonResponse();
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'SELL PROPERTY FREE',
                    style: TextStyle(
                      fontSize: 11,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                //this changes the background color of button
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFEB1C24),
                  padding: EdgeInsets.all(12),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Container(
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(12),
                //     color: Color.fromRGBO(240, 242, 244, 1),
                //   ),
                Flexible(
                  child: TextField(
                    onTap: () {
                      setState(() {
                        widget.buttonResponse();
                      });
                    },
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      fillColor: Color.fromRGBO(240, 242, 244, 1),
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      contentPadding: EdgeInsets.all(10),
                      focusColor: Colors.transparent,
                      hintText: 'Search Area, City or Property ID',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'OpenSans',
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 19,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                // ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecommendedProp(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.menu,
                      size: 25,
                      color: Colors.black,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
