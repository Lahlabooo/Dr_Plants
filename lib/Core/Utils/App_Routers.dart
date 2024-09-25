import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:planta/Core/Utils/ServiceLocator.dart';
import 'package:planta/Core/Widgets/App_Layout.dart';
import 'package:planta/Core/Widgets/Background_App.dart';
import 'package:planta/Features/Chat/Presentation/Views/Chat_Page.dart';
import 'package:planta/Features/Scan/Data/repos/Scan_Repo_Impl.dart';
import 'package:planta/Features/Scan/Presentation/Manger/Get_Plant_State_Info/get_plant_state_info_cubit.dart';
import 'package:planta/Features/Scan/Presentation/Manger/Picked_Image_cubit/picked_image_cubit.dart';
import 'package:planta/Features/Splash/Presentation/Views/Splash_View.dart';
import '../../Features/Scan/Presentation/Views/Scan_Page.dart';

abstract class AppRouters {
  static const kHomeLayout = '/HomeLayout';
  static const kScanPage = '/ScanPage';
  static const kChatPage = '/ChatPage';
  static final routers = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeLayout,
      builder: (context, state) => const AppLayout(),
    ),
    GoRoute(
      path: kScanPage,
      builder: (context, state) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => PickedImageCubit(),
            ),
            BlocProvider(
              create: (context) =>
                  GetPlantStateInfoCubit(getIt.get<ScanRepoImpl>()),
            ),
          ],
          child: const Scaffold(
            body: BackgroundApp(bodyWidget: ScanPage()),
          ),
        );
      },
    ),
    GoRoute(
        path: kChatPage,
        builder: (context, state) {
          return const Scaffold(
            body: BackgroundApp(
              bodyWidget: ChatPage(),
            ),
          );
        }),
  ]);
}
