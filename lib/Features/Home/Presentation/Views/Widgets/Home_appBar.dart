import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:planta/Core/Utils/Styles.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.only(top: 50.0),
      child:  Row(
       children:[
         const Text(
           'Dr Plants',
           style: Styles.textStyle30,
         ),
         const Spacer(),
         IconButton(
           onPressed: () {  },
           icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
         ),
       ]

      ),
    );
  }
}
