import 'package:get_it/get_it.dart';
import 'package:planta/Core/Utils/Api_Service.dart';
import 'package:planta/Features/Category/data/Repos/Category_Repo_Impl.dart';
import 'package:planta/Features/Chat/Data/repos/Chat_Repo_impl.dart';
import 'package:planta/Features/Scan/Data/repos/Scan_Repo_Impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService());
  getIt.registerSingleton<ScanRepoImpl>(
    ScanRepoImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<CategoryRepoImpl>(CategoryRepoImpl());
  getIt.registerSingleton<ChatRepoIMpl>(
      ChatRepoIMpl(getIt.get<ApiService>()),
  );
}
