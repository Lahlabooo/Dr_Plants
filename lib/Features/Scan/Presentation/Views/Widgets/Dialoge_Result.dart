import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planta/Core/Utils/Styles.dart';
import 'package:planta/Features/Scan/Data/Models/Plant_State_Info.dart';

import 'Dialoge_Scan_Result_Item.dart';

class DialogeReult extends StatelessWidget {
  const DialogeReult({
    super.key,
    required this.plantModel,
  });
  final PlantStateInfoModel plantModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.33,
      width: MediaQuery.of(context).size.width,
      child: Column(
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
                txt: plantModel.plant ?? "no_Value",
                title: 'Plant',
              ),
              DialogeScanResultItem(
                txt: plantModel.status ?? "no_Value",
                title: 'States',
              ),
              DialogeScanResultItem(
                txt: plantModel.disease ?? "no_Value",
                title: 'Disease',
              ),
            ],
          ),

        ],
      ),
    );
  }
}
