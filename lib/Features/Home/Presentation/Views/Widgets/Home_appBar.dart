import 'package:flutter/material.dart';
import 'package:planta/Core/Utils/Styles.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Dr Plants', style: Styles.textStyle30,),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,

    );
  }
}
