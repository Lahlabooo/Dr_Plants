import 'dart:io';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:planta/Features/Scan/Data/Models/Plant_State_Info.dart';
import 'package:planta/Features/Scan/Data/repos/Scan_Repo_Impl.dart';

part 'get_plant_state_info_state.dart';

class GetPlantStateInfoCubit extends Cubit<GetPlantStateInfoState> {
  GetPlantStateInfoCubit(this.scanRepoImpl) : super(GetPlantStateInfoInitial());
  final ScanRepoImpl scanRepoImpl;


  Future<void> getPlantState({required File img}) async {

    emit(GetPlantStateInfoLoading());

    var result = await scanRepoImpl.getPlantStateINfo(image: img);
    result.fold(
      (failure) {
        emit(GetPlantStateInfoFailure(failure.errMessage));
      },
      (data) {
       var plantData = PlantStateInfoModel.fromJson(data);
        emit(GetPlantStateInfoSuccess(plantModel: plantData));
      },
    );
  }
}
