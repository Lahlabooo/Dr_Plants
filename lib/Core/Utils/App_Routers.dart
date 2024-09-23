import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planta/Core/Widgets/App_Layout.dart';
import 'package:planta/Core/Widgets/Background_App.dart';
import 'package:planta/Features/Chat/Presentation/Views/Chat_Page.dart';
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
      builder:  (context, state) => const AppLayout(),
    ),
    GoRoute(
        path: kScanPage,
        builder: (context,state) {
          return const Scaffold(
              body:  BackgroundApp(
                  bodyWidget: ScanPage()
              ),

          );
        },
    ),
    GoRoute(
       path: kChatPage,
       builder: (context,state) {
               return const Scaffold(
               body:  BackgroundApp(
                bodyWidget: ChatPage(),
            ),
           );
       }
       ),
               ]
  );
}
