import 'package:flutter/material.dart';

import '../../../../Core/Widgets/Background_App.dart';
import 'Widgets/Categories_Body.dart';

class FlowerPage extends StatelessWidget {
  const FlowerPage({super.key});

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
