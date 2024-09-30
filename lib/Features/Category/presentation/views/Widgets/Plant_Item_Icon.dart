import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:planta/Features/Category/data/Model/Plant_item_Model.dart';

class PlantItemIcon extends StatelessWidget {
  const PlantItemIcon({super.key, required this.plantModel});
final PlantItemModel plantModel ;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.height * .04,
      height: MediaQuery.of(context).size.height * .03,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white10,
      ),
      child: plantModel.isSunny
          ? Icon(
        Icons.sunny,
        color: Colors.white.withOpacity(.8),
        size: 18,
      )
          : Icon(
        FontAwesomeIcons.cloudSun,
        color: Colors.white.withOpacity(.8),
        size:18,
      ),
    );
  }
}
