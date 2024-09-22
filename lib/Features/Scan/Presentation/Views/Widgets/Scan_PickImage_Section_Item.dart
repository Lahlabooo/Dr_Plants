import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/Utils/Styles.dart';
import '../../../../../Core/Widgets/GlassBox.dart';

class ScanPickImageSectionItem extends StatelessWidget {
  const ScanPickImageSectionItem({super.key, this.onTap, required this.icon, required this.title});
  final void Function()? onTap ;
  final IconData icon ;
  final String title ;
  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: GlassBox(
            widget: Container(
              color: Colors.white.withOpacity(.1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 15),
                    FaIcon(
                      icon,
                      size: 50,
                      color: Colors.white.withOpacity(.7),),
                    const SizedBox(height: 15,),
                    Text(
                        title,
                        style: Styles.textStyle14.copyWith(
                          color: Colors.white.withOpacity(.8),)
                    ),
                    const SizedBox(height: 15,),
                  ],
                ),
              ),
            ),
            borderRadius: BorderRadius.circular(20),
            x: 100,
            y: 100
        ),
      ),
    );
  }
}