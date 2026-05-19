import 'package:exercicios_aula_4/patients.class.dart';

final class PatientModel extends Patient {
  PatientModel({
    required super.name,
    required super.doctor,
    required super.tests,
    required super.dateTime,
  });

  PatientModel.fromMap(Map map)
    : super(
        name: map['paciente'] as String,
        doctor: map['medico'] as String,
        tests: map['exames'] as List<String>,
        dateTime: DateTime.parse(map['data']),
      );

  Map<String, dynamic> returnMap() => {
    "name": super.name,
    "doctor": super.doctor,
    "tests": super.tests,
    "dateTime": super.dateTime,
  };
}
