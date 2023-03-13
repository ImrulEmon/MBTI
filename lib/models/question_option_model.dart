// ignore_for_file: public_member_api_docs, sort_constructors_first
class Question {
  int id;
  String text;
  List<Option> options;

  Option? selectedOption;

  Question({
    required this.id,
    required this.text,
    required this.options,
    this.selectedOption,
  });
}

class Option {
  String dominationKey;
  String text;

  Option({
    required this.dominationKey,
    required this.text,
  });
}
