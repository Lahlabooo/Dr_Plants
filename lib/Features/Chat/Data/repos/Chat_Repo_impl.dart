import 'package:dartz/dartz.dart';
import 'package:planta/Core/Utils/Api_Service.dart';
import 'package:planta/Core/Utils/Error/Error.dart';
import 'package:planta/Features/Chat/Data/repos/Chat_Repo.dart';

class ChatRepoIMpl implements ChatRepo {
  final ApiService apiService;

  ChatRepoIMpl(this.apiService);
  @override
  @override
  Future<Either<Failure, dynamic>> getMessages({required String message}) {
    throw UnimplementedError();
  }
}
