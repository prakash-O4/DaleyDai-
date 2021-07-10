class PropertyData {
  bool isRent;
  String houseState;
  String imagePath;
  String houseLocation;
  String houseFixLocation;
  String price;
  PropertyData(
      {this.isRent,
      this.houseState,
      this.imagePath,
      this.houseLocation,
      this.houseFixLocation,
      this.price});
}

List<PropertyData> propertyModel = houseData
    .map(
      (item) => PropertyData(
        isRent: item['isRent'],
        houseState: item['houseState'],
        imagePath: item['imagePath'],
        houseLocation: item['houseLocation'],
        houseFixLocation: item['houseFixLocation'],
        price: item['price'],
      ),
    )
    .toList();

var houseData = [
  {
    "isRent": false,
    "houseState": "FOR RENT",
    "imagePath": "images/home3.jpg",
    "houseLocation": "HOUSE SALE AT NEW ROAD NEW ROAD",
    "houseFixLocation": "New Road, Kathmandu",
    "price": "Rs 10,00,000"
  },
  {
    "isRent": true,
    "houseState": "FOR SALE",
    "imagePath": "images/home2.jpg",
    "houseLocation": "HOUSE SALE AT NEW ROAD",
    "houseFixLocation": "New Road, Kathmandu",
    "price": "Rs 50,00,000"
  },
  {
    "isRent": false,
    "houseState": "FOR RENT",
    "imagePath": "images/home3.jpg",
    "houseLocation": "HOUSE SALE AT NEW ROAD",
    "houseFixLocation": "New Road, Kathmandu",
    "price": "Rs 30,00,000"
  },
  {
    "isRent": true,
    "houseState": "FOR SALE",
    "imagePath": "images/home4.jpg",
    "houseLocation": "HOUSE SALE AT NEW ROAD",
    "houseFixLocation": "New Road, Kathmandu",
    "price": "Rs 10,00,000"
  },
  {
    "isRent": false,
    "houseState": "FOR RENT",
    "imagePath": "images/home5.jpg",
    "houseLocation": "HOUSE SALE AT NEW ROAD",
    "houseFixLocation": "New Road, Kathmandu",
    "price": "Rs 20,00,000"
  },
  {
    "isRent": true,
    "houseState": "FOR RENT",
    "imagePath": "images/home3.jpg",
    "houseLocation": "HOUSE SALE AT NEW ROAD",
    "houseFixLocation": "New Road, Kathmandu",
    "price": "Rs 40,00,000"
  },
  {
    "isRent": false,
    "houseState": "FOR RENT",
    "imagePath": "images/home2.jpg",
    "houseLocation": "HOUSE SALE AT NEW ROAD",
    "houseFixLocation": "New Road, Kathmandu",
    "price": "Rs 60,00,000"
  },
];
