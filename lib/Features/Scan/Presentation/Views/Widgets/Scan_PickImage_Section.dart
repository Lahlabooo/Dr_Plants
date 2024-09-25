import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:planta/Features/Scan/Presentation/Manger/Picked_Image_cubit/picked_image_cubit.dart';
import 'Scan_PickImage_Section_Item.dart';

class PickImageSection extends StatelessWidget {
  const PickImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PickImageSectionItem(
          icon: FontAwesomeIcons.camera,
          title: 'camera',
          onTap: () {
            BlocProvider.of<PickedImageCubit>(context).selectimageFromCamera();
          },
        ),
        const SizedBox(
          width: 15,
        ),
        PickImageSectionItem(
          icon: FontAwesomeIcons.image,
          title: 'Gallery',
          onTap: () {
            BlocProvider.of<PickedImageCubit>(context).selectimageFromGallary();
          },
        ),
      ],
    );
  }
}
