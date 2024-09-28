import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planta/Features/Scan/Presentation/Manger/Get_Plant_State_Info/get_plant_state_info_cubit.dart';
import '../../../../../Core/Widgets/CustomErrorWidget.dart';
import '../../../../../Core/Widgets/Custom_loading_Indicator.dart';
import 'Dialoge_Result.dart';

class AlertDialogeBody extends StatelessWidget {
  const AlertDialogeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPlantStateInfoCubit, GetPlantStateInfoState>(
      builder: (BuildContext context, state) {
        if (state is GetPlantStateInfoFailure) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SizedBox(
                height: MediaQuery.of(context).size.height * .3,
                child: CustomErrorWidget(
                  title: state.errorMessage,
                )),
          );
        } else if (state is GetPlantStateInfoSuccess) {
          return DialogeReult(
            plantModel: state.plantModel,
          );
        } else {
          return SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: const CustomLoadingIndicator());
        }
      },
    );
  }
}
