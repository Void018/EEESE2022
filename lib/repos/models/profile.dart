abstract class Profile {
  String? id;
  bool isDoctor = false;
  late String name;
  late int age;
  late String nationality;
  late bool isMale;
  late bool isSingle;
  String? imageAddress;

  Profile();

  Profile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        isDoctor = json['isDoctor'],
        name = json['name'],
        age = json['age'],
        nationality = json['nationality'],
        isMale = json['isMale'],
        isSingle = json['isSingle'],
        imageAddress = json['imageAddress'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'isDoctor': isDoctor,
        'name': name,
        'age': age,
        'nationality': nationality,
        'isMale': isMale,
        'isSingle': isSingle,
        'imageAddress': imageAddress,
      };
}

class Doctor extends Profile {
  @override
  bool get isDoctor => true;

  Doctor({
    id,
    required name,
    required nationality,
    required age,
    required isMale,
    required isSingle,
    imageAddress,
  }) {
    this.id = id;
    this.name = name;
    this.nationality = nationality;
    this.age = age;
    this.isMale = isMale;
    this.isSingle = isSingle;
  }

  Doctor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isDoctor = json['isDoctor'] ?? true;
    name = json['name'];
    age = json['age'];
    nationality = json['nationality'];
    isMale = json['isMale'];
    isSingle = json['isSingle'];
    imageAddress = json['imageAddress'];
  }
}

class Patient extends Profile {
  PatientHistory history;

  Patient({
    id,
    required name,
    required nationality,
    required age,
    required isMale,
    required isSingle,
    this.history = const PatientHistory(),
    imageAddress,
  }) {
    this.id = id;
    this.name = name;
    this.nationality = nationality;
    this.age = age;
    this.isMale = isMale;
    this.isSingle = isSingle;
  }

  Patient.fromJson(Map<String, dynamic> json)
      : history = PatientHistory.fromJson(json['history']) {
    id = json['id'];
    isDoctor = json['isDoctor'];
    name = json['name'];
    age = json['age'];
    nationality = json['nationality'];
    isMale = json['isMale'];
    isSingle = json['isSingle'];
    imageAddress = json['imageAddress'];
  }

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'isDoctor': isDoctor,
        'name': name,
        'age': age,
        'nationality': nationality,
        'isMale': isMale,
        'isSingle': isSingle,
        'imageAddress': imageAddress,
        'history': history,
      };
}

class PatientHistory {
  final List<String> meds;
  final List<String> allergies;
  final List<String> smoking;
  final List<String> chronicDiseases;

  const PatientHistory({
    this.meds = const [],
    this.allergies = const [],
    this.smoking = const [],
    this.chronicDiseases = const [],
  });

  PatientHistory.fromJson(Map<String, dynamic> json)
      : meds = List<String>.from(json['meds']),
        allergies = List<String>.from(json['allergies']),
        smoking = List<String>.from(json['smoking']),
        chronicDiseases = List<String>.from(json['chronicDiseases']);

  Map<String, dynamic> toJson() => {
        'meds': meds,
        'allergies': allergies,
        'smoking': smoking,
        'chronicDiseases': chronicDiseases,
      };
}
