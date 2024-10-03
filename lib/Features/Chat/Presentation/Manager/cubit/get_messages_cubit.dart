import 'package:bloc/bloc.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planta/Features/Chat/Data/repos/Chat_Repo_impl.dart';

part 'get_messages_state.dart';

class GetMessagesCubit extends Cubit<GetMessagesState> {
  GetMessagesCubit(this.chatRepoImp) : super(GetMessagesInitial());
  static GetMessagesCubit get(context) => BlocProvider.of(context);
  final ChatRepoIMpl chatRepoImp;
  ChatUser myself = ChatUser(id: "1", firstName: "Me");
  ChatUser bot = ChatUser(id: "2", firstName: "Chat GPT");
  List<ChatMessage> allMassages = [];
  List<ChatUser> typing = [];

  Future<dynamic> getMessages({required ChatMessage m}) async {
    typing.add(bot);
    allMassages.insert(0, m);
    emit(GetMessagesMe());
    var result = await chatRepoImp.getMessages(message: m.text);
        ChatMessage m1 = ChatMessage(
        user: bot,
        createdAt: DateTime.now(),
        text: result["candidates"][0]["content"]["parts"][0]["text"],
       );
        allMassages.insert(0, m1);
        emit(GetMessagesSuccess());
        typing.remove(bot);
  }
}
