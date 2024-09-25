import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planta/Core/Utils/Api_Service.dart';
import 'package:planta/Core/Utils/Error/Error.dart';
import 'package:planta/Features/Chat/Data/repos/Chat_Repo.dart';

class ChatRepoIMpl implements ChatRepo {
  final ApiService apiService;

  ChatRepoIMpl(this.apiService);
  @override
  Future<Either<Failure, dynamic>> getMessages(
      {required String message}) async {
    try {
      var data = await ApiService.postService(message: message);
      return right(data);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(
          ServicesError.fromDioExeption(e),
        );
      }
      return left(
        ServicesError(e.toString()),
      );
    }
  }
}
