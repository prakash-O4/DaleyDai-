class SecondBodyData {
  String imagePath;
  String bottomText;
  SecondBodyData({this.imagePath, this.bottomText});
}

List<SecondBodyData> secondData = listData
    .map((item) => SecondBodyData(
        imagePath: item['imagePath'], bottomText: item['bottomText']))
    .toList();

var listData = [
  {"imagePath": "images/doc.jpg", "bottomText": "Learn to use DaleyDai"},
  {"imagePath": "images/blacklogo.png", "bottomText": "Easy Construction"},
  {"imagePath": "images/blacklogo.png", "bottomText": "Home Loans"},
  {"imagePath": "images/blacklogo.png", "bottomText": "Loaned Home"},
];
