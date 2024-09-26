import 'dart:io';
import 'package:flutter/material.dart';
import 'package:planta/Core/Widgets/App_Button.dart';

import 'AlertDialoge_Body.dart';

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
        AppButton(
          width: 140,
          height: 30,
          title: 'Get Result!',
          onTap: () => showDialogFeature(context),
        ),
      ],
    );
  }
}

Future<T?> showDialogFeature<T>(BuildContext context) {
  return showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(.4),
      useSafeArea: true,
      builder: (BuildContext context) {
        return const AlertDialog(
          insetPadding: EdgeInsets.all(10),
          scrollable: false,
          shadowColor: Colors.transparent,
          content: AlertDialogeBody(),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
        );
      });
}
