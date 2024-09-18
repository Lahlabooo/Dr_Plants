import 'package:flutter/material.dart';
import 'package:planta/Core/Utilis/AssetData.dart';
import 'package:planta/Features/Splash/Peresentation/Views/Widgets/Page_View_Item.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageViewItem(
      img: AssetData.img1,
      title: 'Learn more about plants',
      supTitle: 'Read how to care for plants in our rich plants guide ',
    );
  }
}
