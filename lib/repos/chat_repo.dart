import 'package:eeese2022/repos/models/chat.dart';
import 'package:flutter/material.dart';

class ChatRepo extends ChangeNotifier {
  List<Chat>? _chats;

  Future<List<Chat>> getChats() async {
    _loadData();
    return [];
  }

  void addNewChat(Chat chat) {}

  void _loadData() {}

  void _saveData() {}

  get chats => _chats;
}
