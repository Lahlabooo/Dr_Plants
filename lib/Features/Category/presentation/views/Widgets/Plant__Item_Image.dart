import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/Model/Plant_item_Model.dart';

class PlantItemImage extends StatelessWidget {
  const PlantItemImage({
    super.key,
    required this.plantModel,
  });

  final PlantItemModel plantModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .14,
      width: MediaQuery.of(context).size.width * .29,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white.withOpacity(.2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: CachedNetworkImage(
              imageUrl: plantModel.img,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
