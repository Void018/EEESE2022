import 'package:eeese2022/repos/models/drug.dart';

class Pharmacy {
  String? id;
  String name;
  String descreption;
  String geolocation;
  String? imageAsset;
  List<Drug> drugs;

  Pharmacy({
    required this.name,
    required this.descreption,
    required this.geolocation,
    this.drugs = const [],
    this.imageAsset,
  });

  Pharmacy.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        descreption = json['descreption'],
        geolocation = json['geolocation'],
        imageAsset = json['imageAsset'],
        drugs = json['drugs'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'descreption': descreption,
        'geolocation': geolocation,
        'imageAsset': imageAsset,
        'drugs': drugs,
      };
}
