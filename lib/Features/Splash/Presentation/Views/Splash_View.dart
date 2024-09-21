import 'package:flutter/material.dart';
import 'package:planta/Core/Widgets/Background_App.dart';

import 'Widgets/Splash_Body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundApp(
        bodyWidget: SafeArea(child:
         SplashBody()),
      ),
    );
  }
}
