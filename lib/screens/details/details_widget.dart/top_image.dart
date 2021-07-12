import 'package:flutter/material.dart';
import 'package:text_field/model/property_sample.dart';

class TopImage extends StatelessWidget {
  const TopImage();

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Container(
      width: _width,
      height: _height * 0.3,
      child: ListView.builder(
        // controller: _controller,
        scrollDirection: Axis.horizontal,
        itemCount: propertyModel.length,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            width: _width,
            height: _height * 0.3,
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage(
                  propertyModel[index].imagePath,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                    height: 24,
                    width: 85,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        top: 4,
                        bottom: 6,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "5 Photos",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 3),
                          Icon(
                            Icons.photo,
                            size: 15,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


// Positioned(
//                   top: 20,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Icon(
//                         Icons.arrow_back_sharp,
//                         size: 20,
//                         color: Colors.white,
//                       ),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.favorite_border_outlined,
//                             color: Colors.white,
//                             size: 20,
//                           ),
//                           Icon(
//                             Icons.share_outlined,
//                             size: 20,
//                             color: Colors.white,
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),