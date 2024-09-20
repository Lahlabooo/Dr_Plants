import 'package:go_router/go_router.dart';
import 'package:planta/Features/Splash/Presentation/Views/Splash_View.dart';

import '../../Features/Registration/Presentation/Views/Login_Page.dart';

abstract class AppRouters {
  static const kLoginPage = '/LoginPage';
  static final routers = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kLoginPage,
      builder:  (context, state) => const LoginPage(),
    ),
  ]);
}
