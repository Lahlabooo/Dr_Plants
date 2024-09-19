import 'package:flutter/material.dart';
import 'package:planta/Core/Utilis/Styles.dart';

class SplashButton extends StatelessWidget {
  const SplashButton(
      {super.key, required this.currentPage, required this.controller});
  final int currentPage;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pageViewNavigation(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20.0),
            color: Colors.green,
          ),
          child: const Center(
            child: Text(
              "Continue",
              style: Styles.textStyle30,
            ),
          ),
        ),
      ),
    );
  }

  void pageViewNavigation(BuildContext context) {
    if (currentPage == 2) {
      //GoRouter.of(context).push(AppRouters.kLoginPage);
    } else {
      controller.nextPage(
          duration: const Duration(milliseconds: 100), curve: Curves.linear);
    }
  }
}
