import 'package:eeese2022/repos/models/profile.dart';

class Chat {
  String? id;
  Profile contact;
  List<Message> messages;

  Chat({
    this.messages = const [],
    required this.contact,
    this.id,
  });

  Chat.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        contact = json['contact'],
        messages = json['messages'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'contact': contact,
        'messages': messages,
      };
}

class Message {
  String? id;
  String text;
  Profile sender;
  DateTime dateTime;

  Message({
    required this.text,
    required this.sender,
    required this.dateTime,
    this.id,
  });

  Message.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        text = json['text'],
        sender = json['sender'],
        dateTime = json['dateTime'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'text': text,
        'sender': sender,
        'dateTime': dateTime,
      };
}
