// ignore_for_file: public_member_api_docs, sort_constructors_first
class Personality {
  int id;
  String title;
  String subtitle;
  String logo;
  String focus;
  String discription;

  String fameType;
  List<String> career;
  List<String> celbrity;

  Personality({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.logo,
    required this.focus,
    required this.discription,
    required this.fameType,
    required this.career,
    required this.celbrity,
  });
}

List<Personality> allPersonalitie = [
  // Personality(id: 1, title: title, subtitle: subtitle, logo: logo, focus: focus, discription: discription, career: career, celbrity: celbrity),
];
