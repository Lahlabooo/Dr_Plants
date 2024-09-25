import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planta/Core/Utils/Styles.dart';
import 'Image_Container.dart';
import 'Scan_AppBar.dart';
import 'Scan_PickImage_Section.dart';

class ScanBody extends StatelessWidget {
  const ScanBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          ScanAppBar(),
          SizedBox(
            height: 30,
          ),
          Text(
            'Select Image !',
            style: Styles.textStyle25,
          ),
          SizedBox(
            height: 25,
          ),
          PickImageSection(),
          SizedBox(
            height: 40,
          ),
          ImageContainer(),
        ],
      ),
    );
  }
}
