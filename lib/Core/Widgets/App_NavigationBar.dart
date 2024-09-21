
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:planta/Core/Widgets/GlassBox.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key, required this.currentIndex, this.onTap});
  final int currentIndex ;
  final void Function(int)? onTap ;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15,
        left: 10,
        right: 10,
      ),
      child: GlassBox(
        color: Colors.lightGreenAccent.withOpacity(.8),
        borderRadius: 25,
        x: 10,
        y: 10,
        widget: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem( icon:FaIcon(FontAwesomeIcons.seedling,
              //size: 30,
              color: Colors.black,
            ),
                label: ""),
            BottomNavigationBarItem( icon:   FaIcon(FontAwesomeIcons.camera ,
             // size: 30,
              color: Colors.black,
            ),
                label: ""),
            BottomNavigationBarItem( icon:Icon(FontAwesomeIcons.wandMagicSparkles,
              //size: 30,
              color: Colors.black,
            ),
              label: "",),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          fixedColor: Colors.black,
          unselectedIconTheme: const IconThemeData(
            size: 23,
          ),
          selectedIconTheme: const IconThemeData(
            size: 30,
          ),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          landscapeLayout:
          BottomNavigationBarLandscapeLayout.spread,
          unselectedItemColor: Colors.black.withOpacity(.8),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: onTap,
        ),
      ),
    );
  }
}
