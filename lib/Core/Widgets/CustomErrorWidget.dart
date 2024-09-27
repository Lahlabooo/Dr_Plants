import 'package:flutter/material.dart';
import '../Utils/Styles.dart';
class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.title});
  final String title ;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        textAlign: TextAlign.center,
        title,
        maxLines: 2,
        style: Styles.textStyle30.copyWith(color: Colors.black),
      ),
    );
  }
}