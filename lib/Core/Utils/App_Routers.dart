import 'package:go_router/go_router.dart';
import 'package:planta/Features/Home_Layout/Presentation/Views/Home_Layout_page.dart';
import 'package:planta/Features/Splash/Presentation/Views/Splash_View.dart';



abstract class AppRouters {
  static const kHomeLayout = '/HomeLayout';
  static final routers = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeLayout,
      builder:  (context, state) => const HomeLayout(),
    ),
  ]);
}
