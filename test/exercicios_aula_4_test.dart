import 'package:test/test.dart';
import 'package:exercicios_aula_4/patients.model.dart';

void main() {
  final Map<String, dynamic> map = {
    "paciente": "Clayton",
    "medico": "Dra. Maria",
    "exames": ["Hemograma", "Glicemia"],
    "data": "1983-06-17",
  };

  PatientModel patientModel = PatientModel.fromMap(map);

  test('patientModel.name Should by equals to map["paciente"]', () {
    expect(patientModel.name, map['paciente']);
  });
  test('patientModel.doctor Should by map["medico"] ', () {
    expect(patientModel.doctor, map['medico']);
  });
  test('patientModel.tests Should by map["exames"] ', () {
    expect(patientModel.tests, map['exames']);
  });
  test('patientModel.dateTime Should by DateTime.parse(map["data"] ', () {
    expect(patientModel.dateTime, DateTime.parse(map["data"]));
  });
}
