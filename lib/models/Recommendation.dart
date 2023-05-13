class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendation = [
  Recommendation(
    name: "Isha Sehgal",
    source: "University",
    text: "I have had the pleasure to work with you.",
  ),
  Recommendation(
      name: "Ankur",
      source: "University",
      text: 'I have had pleasure to work with you.'),
];
