import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planta/Core/Utils/App_Routers.dart';
import 'package:planta/Features/Category/data/Repos/Category_Repo_Impl.dart';
import 'package:planta/Features/Category/presentation/manager/cubit/fetch_plant_data_cubit.dart';

import 'BlocObserver.dart';
import 'Core/Utils/ServiceLocator.dart';
import 'Features/Scan/Data/repos/Scan_Repo_Impl.dart';
import 'Features/Scan/Presentation/Manger/Get_Plant_State_Info/get_plant_state_info_cubit.dart';
import 'firebase_options.dart';

// ...
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();
  runApp(const Planta());
  setupServiceLocator();
}

class Planta extends StatelessWidget {
  const Planta({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetPlantStateInfoCubit(
            getIt.get<ScanRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => FetchPlantDataCubit(
            getIt.get<CategoryRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.routers,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
        ),
      ),
    );
  }
}
