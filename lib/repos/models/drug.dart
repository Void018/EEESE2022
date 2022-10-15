class Drug {
  String? id;
  String name;
  int quantity;
  String? imageAddress;

  Drug({
    this.id,
    required this.name,
    required this.quantity,
    this.imageAddress,
  });

  Drug.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        quantity = json['quantity'],
        imageAddress = json['imageAddress'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'quantity': quantity,
        'imageAddress': imageAddress,
      };
}
