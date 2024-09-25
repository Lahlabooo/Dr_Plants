part of 'picked_image_cubit.dart';

@immutable
sealed class PickedImageState {}

final class PickedImageInitial extends PickedImageState {}

final class PickedImageSuccees extends PickedImageState {}

final class PickedImageFailure extends PickedImageState {
  final String errMessage;

  PickedImageFailure(this.errMessage);
}
