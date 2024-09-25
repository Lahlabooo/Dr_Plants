import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:planta/Features/Chat/Data/repos/Chat_Repo_impl.dart';

part 'get_messages_state.dart';

class GetMessagesCubit extends Cubit<GetMessagesState> {
  GetMessagesCubit(this.chatRepoImp) : super(GetMessagesInitial());

  final ChatRepoIMpl chatRepoImp;

  Future<dynamic> getMessages({required String message}) async {
    var result = await chatRepoImp.getMessages(message: message);
    result.fold(
      (failure) {
        emit(GetMessagesFailure(failure.errMessage));
      },
      (messages) {
        emit(GetMessagesSuccess(messages));
      },
    );
  }
}
