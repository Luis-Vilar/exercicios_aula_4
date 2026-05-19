import 'package:exercicios_aula_4/db/data.dart';
import 'package:exercicios_aula_4/patients.model.dart';

void main(List<String> arguments) {
  PatientModel patient = PatientModel.fromMap(map);

  Map patientMap = patient.returnMap();

  print(patientMap);
}
