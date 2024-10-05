import 'package:flutter/material.dart';
import 'package:planta/Core/Widgets/Background_App.dart';
import 'package:planta/Features/Category/data/Model/Plant_item_Model.dart';
import 'package:planta/Features/Category/presentation/views/Widgets/plant_Detailed_Body.dart';

class PlantDetailed extends StatelessWidget {
  const PlantDetailed({super.key, required this.plantModel});
  final PlantItemModel plantModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          BackgroundApp(bodyWidget: PlantDetailedBody(plantModel: plantModel)),
    );
  }
}
