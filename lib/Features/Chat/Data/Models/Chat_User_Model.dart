import 'package:dash_chat_2/dash_chat_2.dart';

abstract class ChatUserModel {
  static ChatUser myself = ChatUser(id: "1", firstName: "Me");
  static ChatUser bot = ChatUser(id: "2", firstName: "Chat GPT");
  static List<ChatMessage> allMassages = [];
  static List<ChatUser> typing = [];
}
