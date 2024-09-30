import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:planta/Core/Widgets/App_Layout.dart';
import 'package:planta/Core/Widgets/Background_App.dart';
import 'package:planta/Features/Category/presentation/views/Cacti_Page.dart';
import 'package:planta/Features/Category/presentation/views/Flowers_Page.dart';
import 'package:planta/Features/Category/presentation/views/Herbs_Page.dart';
import 'package:planta/Features/Category/presentation/views/Vegetables_Page.dart';
import 'package:planta/Features/Chat/Presentation/Views/Chat_Page.dart';
import 'package:planta/Features/Scan/Presentation/Manger/Picked_Image_cubit/picked_image_cubit.dart';
import 'package:planta/Features/Splash/Presentation/Views/Splash_View.dart';
import '../../Features/Scan/Presentation/Views/Scan_Page.dart';

abstract class AppRouters {
  static const kHomeLayout = '/HomeLayout';
  static const kScanPage = '/ScanPage';
  static const kChatPage = '/ChatPage';
  static const kVegetablesPage = '/VegetablesPage';
  static const kFlowersPage = '/FlowersPage';
  static const kCactiPage = '/CactiPage';
  static const kHerbsPage = '/HerbsPage';
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
    GoRoute(
      path: kVegetablesPage,
      builder: (context, state) => const VegetablesPage(),
    ),
    GoRoute(
      path: kFlowersPage,
      builder: (context, state) => const FlowerPage(),
    ),
    GoRoute(
      path: kCactiPage,
      builder: (context, state) => const CactiPage(),
    ),
    GoRoute(
      path: kHerbsPage,
      builder: (context, state) => const HerbsPage(),
    ),
  ]);
}
