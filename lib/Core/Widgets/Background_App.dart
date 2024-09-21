import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundApp extends StatelessWidget {
  const BackgroundApp({super.key, required this.bodyWidget , this.navWidget});
  final Widget bodyWidget;
  final Widget? navWidget ;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          children: [
            Row(
              children: [
                const Spacer(),
                Container(
                  width: 80,
                  height: 40,
                  color: Colors.teal,
                ),
                const Spacer(),
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      const Spacer(),
                      Container(
                        width: 10,
                        height: 600,
                        color: Colors.teal,
                      ),
                      const Spacer(),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const Spacer(),
                      Container(
                        width: 5,
                        height: 600,
                        color: Colors.teal,
                      ),
                      const Spacer(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 110,
              sigmaY: 90,
              // tileMode: TileMode.clamp,
            ),
            child: const SizedBox(),
          ),
        ),
        bodyWidget,
        navWidget??const SizedBox(),
      ],
    );
  }
}
