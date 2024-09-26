import 'package:flutter/material.dart';
import 'package:planta/Core/Utils/Styles.dart';
import 'package:planta/Core/Widgets/GlassBox_WithBorder.dart';

import 'Dialoge_Scan_Result_Item.dart';

class AlertDialogeBody extends StatelessWidget {
  const AlertDialogeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassBoxWithBorder(
      borderRadius: 20,
      x: 15,
      y: 15,
      color: Colors.white.withOpacity(.5),
      widget: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .34,
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              'Result',
              style: Styles.textStyle25.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DialogeScanResultItem(),
                DialogeScanResultItem(),
                DialogeScanResultItem(),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
