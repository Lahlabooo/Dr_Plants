import 'package:flutter/material.dart';
import 'package:planta/Core/Utils/Styles.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(top: 50.0),
      child:  Row(
       children:[   Text('Dr Plants', style: Styles.textStyle30,),
       ]

      ),
    );
  }
}
