class InfoCardData {
  String mainText;
  String info;
  String infoSec;
  String cardImage;
  String buttonText;
  InfoCardData(
      {this.mainText,
      this.info,
      this.infoSec,
      this.cardImage,
      this.buttonText});
}

List<InfoCardData> infoCardData = InfoCardModel.map(
  (item) => InfoCardData(
    mainText: item['mainText'],
    info: item['info'],
    infoSec: item['infoSec'],
    cardImage: item['itemImage'],
    buttonText: item['buttonText'],
  ),
).toList();

var InfoCardModel = [
  {
    "mainText": "Searching For Resource ?",
    "info": "Find Resources",
    "infoSec": "for Construction",
    "cardImage": "images/blacklogo.png",
    "buttonText": "Easy Construction"
  },
  {
    "mainText": "Searching For Resource ?",
    "info": "Find Resources",
    "infoSec": "for Construction",
    "cardImage": "images/blacklogo.png",
    "buttonText": "Easy Construction"
  },
];
