import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:planta/Features/Category/data/Model/Plant_item_Model.dart';

import '../../../data/Repos/Category_Repo_Impl.dart';

part 'fetch_plant_data_state.dart';

class FetchPlantDataCubit extends Cubit<FetchPlantDataState> {
  FetchPlantDataCubit(this.categoryRepoImpl) : super(FetchPlantDataInitial());
  final CategoryRepoImpl categoryRepoImpl;
  List<PlantItemModel> plantData = [];
  Future<void> fetchData({required String id}) async {
    plantData = [];
    emit(FetchPlantDataloading());
    try {
      var data = await categoryRepoImpl.fetchPlantData(id: id);
      for (var element in data) {
        plantData.add(
          PlantItemModel.fromjson(element),
        );
      }
      emit(FetchPlantDataSuccess(plantData));
    } on Exception catch (e) {
      emit(
        FetchPlantDataFailure(e.toString()),
      );
    }
  }
}
