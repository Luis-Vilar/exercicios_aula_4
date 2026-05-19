abstract class Patient {
  String name;
  String doctor;
  List<String> tests;
  DateTime dateTime;

  Patient({
    required this.name,
    required this.doctor,
    required this.tests,
    required this.dateTime,
  });
}


