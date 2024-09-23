import 'package:flutter/material.dart';

class AvatarBuilder extends StatelessWidget {
  const AvatarBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0,left: 3),
      child: CircleAvatar(
          radius: 14,
          backgroundColor: Colors.white.withOpacity(.2),
          child: Image.asset(
            'asset/images/h5.png',
            height: 20,
          )),
    );
  }
}