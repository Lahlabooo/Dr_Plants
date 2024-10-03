part of 'get_messages_cubit.dart';

@immutable
sealed class GetMessagesState {}

final class GetMessagesInitial extends GetMessagesState {}

final class GetMessagesSuccess extends GetMessagesState {
}

final class GetMessagesFailure extends GetMessagesState {
  final String errMessage;

  GetMessagesFailure(this.errMessage);
}
