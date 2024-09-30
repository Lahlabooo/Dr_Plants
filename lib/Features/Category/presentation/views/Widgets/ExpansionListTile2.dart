import 'package:flutter/material.dart';
import '../../../data/Model/Plant_item_Model.dart';
import 'DiseaseItem.dart';

class ExpansionListTile2 extends StatelessWidget {
  const ExpansionListTile2({
    super.key,
    required this.plantModel,
  });


  final PlantItemModel plantModel ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  const Text('This plant can often infected with',
        style:TextStyle(color: Colors.white),
      ),

      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15.0,bottom: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DiseaseItem(title: plantModel.pests1),
            const SizedBox(width: 15,),
            DiseaseItem(title: plantModel.pests2),
            const SizedBox(width: 15,),
            DiseaseItem(title: plantModel.pests3),
          ],
        ),
      ),
    );
  }
}