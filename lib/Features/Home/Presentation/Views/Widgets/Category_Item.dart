
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../Core/Widgets/GlassBox_WithBorder.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.title, required this.iconColor, required this.icon, required this.onTap,});


final String title ;
final IconData icon ;
final Color iconColor ;
final void Function() onTap ;
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
    onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0,right: 10),
        child: GlassBoxWithBorder(
          widget: SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            width: MediaQuery.of(context).size.width * .4,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top: 15),
              child: Column(
                //alignment: AlignmentDirectional.bottomCenter,
                children: [
                  FaIcon(icon, size: 55, color: iconColor),
                  const Spacer(),
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white.withOpacity(.8),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
