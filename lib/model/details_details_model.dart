class DetailsModel {
  final String upperText;
  final String lowerText;
  DetailsModel({this.lowerText, this.upperText});
}

List<DetailsModel> detailsModel = detailsData
    .map(
      (value) => DetailsModel(
        lowerText: value["lowerText"],
        upperText: value["upperText"],
      ),
    )
    .toList();

var detailsData = [
  {"upperText": "Property Type", "lowerText": "Residental"},
  {"upperText": "Property Area", "lowerText": "2 Anna"},
  {"upperText": "Property Face", "lowerText": "East"},
  {"upperText": "Road Size", "lowerText": "20 Feet"},
  {"upperText": "Property ID", "lowerText": "18293"},
  {"upperText": "Built Year", "lowerText": "2020"},
  {"upperText": "Distance From Main Road", "lowerText": "20 Feet"},
  {"upperText": "Total Area", "lowerText": "18923"},
  {"upperText": "Total Floors", "lowerText": "4"},
  {"upperText": "Built Year", "lowerText": "2020"},
  {"upperText": "Road Type", "lowerText": "Pitch"},
  {"upperText": "Furnishing", "lowerText": "Full Furnished"},
  {"upperText": "Built Year", "lowerText": "2010"},
];
