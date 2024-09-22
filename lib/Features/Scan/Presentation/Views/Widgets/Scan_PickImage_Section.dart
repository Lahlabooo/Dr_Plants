import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Scan_PickImage_Section_Item.dart';

class ScanPickImageSection extends StatelessWidget {
  const ScanPickImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ScanPickImageSectionItem(icon: FontAwesomeIcons.camera, title: 'camera',),
        SizedBox(width: 15,),
        ScanPickImageSectionItem(icon: FontAwesomeIcons.image, title: 'Gallery',),

      ],
    );
  }
}