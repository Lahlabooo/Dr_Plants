import 'package:flutter/material.dart';
import 'package:planta/Core/Utils/AssetData.dart';
import 'package:planta/Features/Splash/Data/SpalshData.dart';
import 'package:planta/Features/Splash/Presentation/Views/Widgets/Page_View_Item.dart';

class CustompageView extends StatelessWidget {
  const CustompageView(
      {super.key, required this.pageController, this.onPageChanged});
  final PageController pageController;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: onPageChanged,
      children: [
        PageViewItem(
            img: AssetData.SpalshImg[0],
            title: SplashData.titleOne,
            supTitle: SplashData.descriptionOne),
        PageViewItem(
            img: AssetData.SpalshImg[1],
            title: SplashData.titleTwo,
            supTitle: SplashData.descriptionTwo),
        PageViewItem(
            img: AssetData.SpalshImg[2],
            title: SplashData.titleThree,
            supTitle: SplashData.descriptionThree),
      ],
    );
  }
}
