import 'package:flutter/material.dart';

import '../../../data/Model/Plant_item_Model.dart';

class PlantItemType extends StatelessWidget {
  const PlantItemType({
    super.key,
    required this.plantModel,
  });

  final PlantItemModel plantModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .03,
      width: MediaQuery.of(context).size.height * .09,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: plantModel.type == 'Medium'
              ? Colors.lightGreenAccent.withOpacity(.7)
              : Colors.tealAccent.withOpacity(.7)),
      child: Center(
        child: Text(
          plantModel.type,
          style: TextStyle(
              fontSize: 15,
              color: Colors.black.withOpacity(.8),
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
