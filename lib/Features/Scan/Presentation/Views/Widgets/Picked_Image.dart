import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planta/Core/Widgets/App_Button.dart';
import 'package:planta/Core/Widgets/GlassBox_WithBorder.dart';

import 'package:planta/Features/Scan/Presentation/Manger/Get_Plant_State_Info/get_plant_state_info_cubit.dart';
import 'package:planta/Features/Scan/Presentation/Manger/Picked_Image_cubit/picked_image_cubit.dart';

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
                onTap: () {
                  showDialogFeature(context,);
                },
             ),
      ],
    );
  }

  Future<T?> showDialogFeature<T>(context,) {
    BlocProvider.of<GetPlantStateInfoCubit>(context).getPlantState(
      img: BlocProvider.of<PickedImageCubit>(context).image ?? File(""),
    );
    return showDialog(
        context: context,
        barrierColor: Colors.black.withOpacity(.4),
        useSafeArea: true,
        builder: (BuildContext context) {
          return  AlertDialog(
            insetPadding: const EdgeInsets.all(0),
            scrollable: false,
            shadowColor: Colors.transparent,
            content: GlassBoxWithBorder(
              borderRadius: 20,
              x: 15,
              y: 15,
              color: Colors.white.withOpacity(.5),
              widget: const AlertDialogeBody(
              ),
            ),
            elevation: 0.0,
            backgroundColor: Colors.transparent,
           // contentPadding: EdgeInsets.zero,
          );
        });
  }
}
