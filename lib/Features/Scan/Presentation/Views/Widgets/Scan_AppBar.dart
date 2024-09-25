import 'package:flutter/material.dart';

import '../../../../../Core/Utils/Styles.dart';
import '../../../../../Core/Widgets/GlassBox.dart';

class ScanAppBar extends StatelessWidget {
  const ScanAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassBox(
      y: 100,
      x: 100,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
        topLeft: Radius.circular(0),
        topRight: Radius.circular(25),
      ),
      widget: Container(
        color: Colors.white.withOpacity(.2),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              SizedBox(
                child: Image.asset(
                  'assets/images/plant_scan.png',
                  height: 40,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
              const Spacer(),
              Text(
                'You can Scan or Select Image . ',
                style: Styles.textStyle15.copyWith(
                    color: Colors.white.withOpacity(.8),
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
