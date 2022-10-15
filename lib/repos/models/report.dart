import 'package:eeese2022/repos/models/profile.dart';

class Report {
  String? id;
  String text;
  Doctor doctor;
  DateTime dateTime;

  Report({
    required this.doctor,
    required this.text,
    required this.dateTime,
  });

  Report.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        text = json['text'],
        doctor = Doctor.fromJson(json['doctor']),
        dateTime = json['dateTime'].toDate();

  Map<String, dynamic> toJson() => {
        'id': id,
        'text': text,
        'doctor': doctor.toJson(),
        'dateTime': dateTime,
      };
}
