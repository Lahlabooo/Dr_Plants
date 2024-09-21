
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key, required this.currentIndex, this.onDestinationSelected});
  final int currentIndex ;
  final void Function(int)? onDestinationSelected ;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15,
        left: 10,
        right: 10,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: NavigationBar(
          destinations: const [
            NavigationDestination( icon:FaIcon(FontAwesomeIcons.seedling,
              size: 30,
              color: Colors.black,
            ),
                label: ""),
            NavigationDestination( icon:   FaIcon(FontAwesomeIcons.camera ,
              size: 30,
              color: Colors.black,
            ),
                label: ""),
            NavigationDestination( icon:Icon(FontAwesomeIcons.wandMagicSparkles,
              size: 30,
              color: Colors.black,
            ),
              label: "",),
          ],
          backgroundColor:  Colors.lightGreenAccent.withOpacity(.9),
          animationDuration: const Duration(seconds: 1),
          labelBehavior:  NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: currentIndex,
          onDestinationSelected:onDestinationSelected,
          indicatorColor: Colors.white.withOpacity(0),
          height: 60,
        ),
      ),
    );
  }
}
