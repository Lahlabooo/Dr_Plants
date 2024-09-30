import 'package:flutter/material.dart';
import '../../../data/Model/Plant_item_Model.dart';
import 'DiseaseItem.dart';

class ExpansionListTile1 extends StatelessWidget {
  const ExpansionListTile1({
    super.key,
    required this.plantModel,
  });


  final PlantItemModel plantModel ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  const Text('Common issues for this plant are :',
        style:TextStyle(color: Colors.white),
      ),

      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15.0,bottom: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DiseaseItem(title: plantModel.disease1),
            const SizedBox(width: 15,),
            DiseaseItem(title: plantModel.disease2),
            const SizedBox(width: 15,),
            DiseaseItem(title: plantModel.disease3),
          ],
        ),
      ),
    );
  }
}