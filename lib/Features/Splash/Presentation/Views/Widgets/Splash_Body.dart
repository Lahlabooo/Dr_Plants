import 'package:flutter/material.dart';
import 'package:planta/Features/Splash/Presentation/Views/Widgets/PageView.dart';
import 'package:planta/Features/Splash/Presentation/Views/Widgets/SplashButton.dart';

import 'Indicator.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

late PageController _controller;
int currentPage = 0;

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustompageView(
          pageController: _controller,
          onPageChanged: (index) {
            setState(() {
              currentPage = index;
            });
          },
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Indicator(
              controller: _controller,
            ),
            const SizedBox(
              height: 40,
            ),
            SplashButton(currentPage: currentPage, controller: _controller)
          ],
        ),
      ],
    );
  }
}
