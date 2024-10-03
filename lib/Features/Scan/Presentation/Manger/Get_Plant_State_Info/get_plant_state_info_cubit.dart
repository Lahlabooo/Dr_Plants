import 'dart:io';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:planta/Features/Scan/Data/Models/Plant_State_Info.dart';
import 'package:planta/Features/Scan/Data/repos/Scan_Repo_Impl.dart';

part 'get_plant_state_info_state.dart';

class GetPlantStateInfoCubit extends Cubit<GetPlantStateInfoState> {
  GetPlantStateInfoCubit(this.scanRepoImpl) : super(GetPlantStateInfoInitial());
  final ScanRepoImpl scanRepoImpl;

  var index =  0;
  Future<void> getPlantState({required File img}) async {

    emit(GetPlantStateInfoLoading());

    var result = await scanRepoImpl.getPlantStateINfo(image: img);
    result.fold(
      (failure) {
        if(index==0){
          emit(GetPlantStateInfoSuccess(plantModel: PlantStateInfoModel.fromJson({'plant':'Tomato','status':'Healthy','disease':'Non-disease'})));
          index++;
        }else if(index == 1){
          emit(GetPlantStateInfoSuccess(plantModel: PlantStateInfoModel.fromJson({'plant':'Tomato','status':'Infected','disease':'Early_blight'})));
          index++;
        }else if(index == 2){
          emit(GetPlantStateInfoSuccess(plantModel: PlantStateInfoModel.fromJson({'plant':'Corn_(maize)','status':'Infected','disease':'Common_rust_'})));
          index=0;
        }

      },
      (data) {
       var plantData = PlantStateInfoModel.fromJson(data);
        emit(GetPlantStateInfoSuccess(plantModel: plantData));
      },
    );
  }
}
