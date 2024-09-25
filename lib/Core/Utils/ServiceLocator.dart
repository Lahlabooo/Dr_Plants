import 'package:get_it/get_it.dart';
import 'package:planta/Core/Utils/Api_Service.dart';
import 'package:planta/Features/Chat/Data/repos/Chat_Repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService());
  getIt.registerSingleton<ChatRepoIMpl>(
    ChatRepoIMpl(getIt.get<ApiService>()),
  );
}
