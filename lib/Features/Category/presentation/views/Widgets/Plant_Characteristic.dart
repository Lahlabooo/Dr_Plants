
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:planta/Core/Utils/Styles.dart';

import '../../../../../Core/Widgets/GlassBox_WithBorder.dart';

class PlantCharacteristic extends StatelessWidget {
  const PlantCharacteristic({super.key, required this.title, required this.icon, required this.iconColor, required this.supTitle});

  final String title,supTitle;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 10.0, right: 10),
      child: GlassBoxWithBorder(
        widget: SizedBox(
          height: MediaQuery.of(context).size.height * .17,
          width: MediaQuery.of(context).size.width * .42,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0, top: 15),
            child: Column(
              //alignment: AlignmentDirectional.bottomCenter,
              children: [
                FaIcon(icon, size: 35, color: iconColor),
                const SizedBox(height: 10,),
                Text(
                  title,
                  style: Styles.textStyle25.copyWith(fontStyle: FontStyle.normal),
                ),
                const SizedBox(height: 10,),
                Opacity(
                  opacity: .8,
                  child: Text(
                    supTitle,
                    style: Styles.textStyle15,
                  ),
                ),
              ],
            ),
          ),
        ),
        color: Colors.white.withOpacity(.2),
        borderRadius: 25,
        x: 100,
        y: 100,
      ),
    );
  }
}
