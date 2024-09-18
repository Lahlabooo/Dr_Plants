import 'package:flutter/material.dart';
import 'package:planta/Core/Utilis/App_Routers.dart';

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
    );
  }
}
