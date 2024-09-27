import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planta/Core/Utils/Styles.dart';
import 'package:planta/Features/Scan/Presentation/Manger/Get_Plant_State_Info/get_plant_state_info_cubit.dart';
import '../../../../../Core/Widgets/CustomErrorWidget.dart';
import '../../../../../Core/Widgets/Custom_loading_Indicator.dart';
import 'Dialoge_Scan_Result_Item.dart';

class AlertDialogeBody extends StatelessWidget {
  const AlertDialogeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPlantStateInfoCubit,GetPlantStateInfoState>(
      builder: (BuildContext context, state) {
        if (state is GetPlantStateInfoFailure){
          return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height*.3,
              child:CustomErrorWidget(title:state.errorMessage,)
            ),
          );
        }
        else if (state is GetPlantStateInfoSuccess){
          return Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                'Result',
                style: Styles.textStyle25.copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DialogeScanResultItem(
                    txt: state.plantModel.plant ?? "no_Value",
                    title: 'Plant',
                  ),
                  DialogeScanResultItem(
                    txt: state.plantModel.status ?? "no_Value",
                    title: 'States',
                  ),
                  DialogeScanResultItem(
                    txt: state.plantModel.disease ??"no_Value",
                    title: 'Disease',
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          );
        }
        else {
          return SizedBox(
              height: MediaQuery.of(context).size.height*.3,
              child: const CustomLoadingIndicator());
        }

      },

    );
  }
}

