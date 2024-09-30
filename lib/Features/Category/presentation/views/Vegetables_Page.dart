import 'package:flutter/material.dart';
import 'package:planta/Core/Widgets/Background_App.dart';
import 'Widgets/Categories_Body.dart';

class VegetablesPage extends StatelessWidget {
  const VegetablesPage({super.key});

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

