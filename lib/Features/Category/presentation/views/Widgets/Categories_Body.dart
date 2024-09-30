import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/Utils/Styles.dart';
import 'Plant_Item_List.dart';

class CategoriesBody extends StatelessWidget {
  const CategoriesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(
                "Vegetables",
                style: Styles.textStyle30,
              ),
              Spacer(),
              Icon(FontAwesomeIcons.magnifyingGlass),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        PlantItemList(),
      ],
    );
  }
}
