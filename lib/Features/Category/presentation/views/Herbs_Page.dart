import 'package:flutter/material.dart';

import '../../../../Core/Widgets/Background_App.dart';
import 'Widgets/Categories_Body.dart';

class HerbsPage extends StatelessWidget {
  const HerbsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.0),
        child: BackgroundApp(
          bodyWidget: CategoriesBody(),
        ),
      ),
    );
  }
}