part of 'get_plant_state_info_cubit.dart';

@immutable
sealed class GetPlantStateInfoState {}

final class GetPlantStateInfoInitial extends GetPlantStateInfoState {}

final class GetPlantStateInfoLoading extends GetPlantStateInfoState {}

final class GetPlantStateInfoSuccess extends GetPlantStateInfoState {
  final PlantStateInfoModel plantModel ;

  GetPlantStateInfoSuccess({required this.plantModel});
}

final class GetPlantStateInfoFailure extends GetPlantStateInfoState {
  final String errorMessage;

  GetPlantStateInfoFailure(this.errorMessage);
}
