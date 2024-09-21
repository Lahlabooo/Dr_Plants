
import 'package:flutter/material.dart';

class CarouselSliderItem extends StatelessWidget {
  const CarouselSliderItem({super.key, required this.img});
  final String img ;
  @override
  Widget build(BuildContext context) {
    return   Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white.withOpacity(.2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image(
              image: AssetImage(img),
              fit: BoxFit.fill,
            ),
          ),
        ));
  }
}
