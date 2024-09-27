import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planta/Core/Utils/App_Routers.dart';

import 'BlocObserver.dart';
import 'Core/Utils/ServiceLocator.dart';
import 'Features/Scan/Data/repos/Scan_Repo_Impl.dart';
import 'Features/Scan/Presentation/Manger/Get_Plant_State_Info/get_plant_state_info_cubit.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const Planta());
  setupServiceLocator();
}

class Planta extends StatelessWidget {
  const Planta({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GetPlantStateInfoCubit(getIt.get<ScanRepoImpl>()),
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
