import 'dart:io';

import 'package:flutter/material.dart';

class PickedImage extends StatelessWidget {
  const PickedImage({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.file(
              File(path),
              height: 256,
              width: 256,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 25,
        ),
        Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.lime,
                  Colors.green,
                ],
              ),
              borderRadius: BorderRadiusDirectional.circular(15.0)),
          width: 130,
          height: 40,
          child: const Center(
            child: InkWell(
              child: Text(
                "Get Result !",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
