import 'package:dartz/dartz.dart';
import 'package:planta/Core/Utils/Error/Error.dart';

abstract class ChatRepo {
  Future<dynamic> getMessages({required String message});
}
