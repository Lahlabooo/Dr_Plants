import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../Core/Utils/AssetData.dart';
import 'Carousel_Slider_Item.dart';


class HomeCarouselSlider extends StatelessWidget {
  const HomeCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
      items:  [
        CarouselSliderItem(img: AssetData.carouselSliderImg[0],),
        CarouselSliderItem(img: AssetData.carouselSliderImg[1],),
        CarouselSliderItem(img: AssetData.carouselSliderImg[2],),
        CarouselSliderItem(img: AssetData.carouselSliderImg[3],),
      ],
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: .7,
        aspectRatio:1.9,
      ),
    );
  }
}