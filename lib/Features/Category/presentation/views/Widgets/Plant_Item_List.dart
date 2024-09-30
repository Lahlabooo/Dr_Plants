import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planta/Core/Widgets/CustomErrorWidget.dart';
import 'package:planta/Core/Widgets/Custom_loading_Indicator.dart';
import 'package:planta/Features/Category/presentation/manager/cubit/fetch_plant_data_cubit.dart';

import 'Plant_item.dart';

class PlantItemList extends StatelessWidget {
  const PlantItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchPlantDataCubit, FetchPlantDataState>(
      builder: (context, state) {
        if (state is FetchPlantDataSuccess) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.plantModel.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => PlantItem(
                plantModel: state.plantModel[index],
              ),
            ),
          );
        } else if (state is FetchPlantDataFailure) {
          CustomErrorWidget(
            title: state.errMessage,
          );
        }
        return const CustomLoadingIndicator();
      },
    );
  }
}
