import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'picked_image_state.dart';

class PickedImageCubit extends Cubit<PickedImageState> {
  PickedImageCubit() : super(PickedImageInitial());
  var picker = ImagePicker();
  File? image;

  dynamic pickedFile;
  Future<void> selectimageFromGallary() async {
    image = null;
    pickedFile = null;
    pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      image = File(pickedFile.path);
      emit(
        PickedImageSuccees(),
      );
    } else {
      emit(
        PickedImageFailure("no image selected"),
      );
    }
  }

  Future<void> selectimageFromCamera() async {
    image = null;
    pickedFile = null;
    pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      image = File(pickedFile.path);
      emit(
        PickedImageSuccees(),
      );
    } else {
      emit(
        PickedImageFailure("no image selected"),
      );
    }
  }
}
