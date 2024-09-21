
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:planta/Features/Home/Data/Models/Category_Model.dart';

import '../../../../../Core/Widgets/GlassBox_WithBorder.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.catModel,});

final CategoryModel catModel ;

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(bottom: 15.0,right: 10),
      child: GlassBoxWithBorder(
        widget: Padding(
          padding: const EdgeInsets.only(bottom: 15.0, top: 15),
          child: Column(
            //alignment: AlignmentDirectional.bottomCenter,
            children: [
              FaIcon(catModel.img, size: 55, color: catModel.color),
              const Spacer(),
              Text(
                catModel.title,
                style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        color: Colors.white.withOpacity(.2),
        borderRadius: 25,
        x: 100,
        y: 100,
      ),
    );
  }
}
