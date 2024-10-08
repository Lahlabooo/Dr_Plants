import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:planta/Features/Home/Presentation/Views/Widgets/Category_Item.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(
                title: 'Vegetables',
                iconColor: Colors.lightGreen,
                icon: FontAwesomeIcons.pepperHot,
              ),
              CategoryItem(
                title: 'Flowers',
                iconColor: Colors.redAccent,
                icon: FontAwesomeIcons.seedling,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(
                title: 'Cacti',
                iconColor: Colors.purpleAccent,
                icon: FontAwesomeIcons.spa,
              ),
              CategoryItem(
                title: 'Herbs',
                iconColor: Colors.orangeAccent,
                icon: FontAwesomeIcons.canadianMapleLeaf,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
