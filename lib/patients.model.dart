import 'package:exercicios_aula_4/patients.class.dart';

abstract interface class IPatientModel {
  Map<String, dynamic> returnMap();
}

final class PatientModel extends Patient implements IPatientModel {
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

  @override
  Map<String, dynamic> returnMap() => {
    "name": super.name,
    "doctor": super.doctor,
    "tests": super.tests,
    "dateTime": super.dateTime,
  };
}
