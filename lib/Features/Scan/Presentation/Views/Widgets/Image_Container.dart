import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planta/Core/Utils/Styles.dart';
import 'package:planta/Features/Scan/Presentation/Manger/Picked_Image_cubit/picked_image_cubit.dart';

import 'Picked_Image.dart';
import 'Scan_Page_Image.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickedImageCubit, PickedImageState>(
      builder: (context, state) {
        if (state is PickedImageFailure) {
          return Center(
            child: Text(
              state.errMessage,
              style: Styles.textStyle25,
            ),
          );
        } else {
          if (BlocProvider.of<PickedImageCubit>(context).image == null) {
            return const ScanPageImage();
          } else {
            return PickedImage(
              path:
                  BlocProvider.of<PickedImageCubit>(context).image?.path ?? "",
            );
          }
        }
      },
    );
  }
}
