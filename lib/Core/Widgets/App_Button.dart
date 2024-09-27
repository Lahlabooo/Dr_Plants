import 'package:flutter/material.dart';
import '../../../../../Core/Utils/Styles.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.width,
      required this.height,
      required this.title,
      this.onTap});
  final double width, height;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.lime,
                  Colors.green,
                ],
              ),
              borderRadius: BorderRadiusDirectional.circular(20.0)),
          width: 170,
          height: 50,
          child: Center(
            child: Text(title,
                style: Styles.textStyle18.copyWith(color: Colors.black)),
          ),
        ),
      ),
    );
  }
}
