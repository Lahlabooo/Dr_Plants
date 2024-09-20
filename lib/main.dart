import 'package:flutter/material.dart';
import 'package:planta/Core/Utils/App_Routers.dart';

void main() {
  runApp(const Planta());
}

class Planta extends StatelessWidget {
  const Planta({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouters.routers,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
    );
  }
}
