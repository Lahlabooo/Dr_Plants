import 'package:flutter/material.dart';

class ScanPageImage extends StatelessWidget {
  const ScanPageImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            'assets/images/2.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
