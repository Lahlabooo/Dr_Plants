part of 'fetch_plant_data_cubit.dart';

@immutable
sealed class FetchPlantDataState {}

final class FetchPlantDataInitial extends FetchPlantDataState {}

final class FetchPlantDataloading extends FetchPlantDataState {}

final class FetchPlantDataSuccess extends FetchPlantDataState {
  final List<PlantItemModel> plantModel;

  FetchPlantDataSuccess(this.plantModel);
}

final class FetchPlantDataFailure extends FetchPlantDataState {
  final String errMessage;

  FetchPlantDataFailure(this.errMessage);
}
