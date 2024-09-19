import 'dart:ui';

import 'package:flutter/material.dart';

class BacckgroundApp extends StatelessWidget {
  const BacckgroundApp({super.key, required this.bodyWidgt});
  final Widget bodyWidgt;
  @override
  Widget build(BuildContext context) {
    return Stack(
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
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 60,
              sigmaY: 40,
            ),
            child: const SizedBox(),
          ),
        ),
        bodyWidgt,
      ],
    );
  }
}
