import 'package:go_router/go_router.dart';
import 'package:planta/Features/Splash/Peresentation/Views/Splash_View.dart';

abstract class AppRouters {
  static const kLoginPage = '/LoginPage';
  static final routers = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    //GoRoute(
    //  path: kLoginPage,
    //),
  ]);
}
