
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planta/Core/Utils/App_Routers.dart';
import 'package:planta/Core/Utils/Styles.dart';
import 'package:planta/Features/Category/data/Model/Plant_item_Model.dart';
import 'package:planta/Features/Category/presentation/views/Widgets/Plant_Item_Icon.dart';

import 'Plant_Item_Type.dart';
import 'Plant__Item_Image.dart';

class PlantItem extends StatelessWidget {
  const PlantItem({super.key, required this.plantModel});
  final PlantItemModel plantModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,bottom: 15),
      child: GestureDetector(
        onTap: (){
          GoRouter.of(context).push(AppRouters.kPlantDetailedPage,extra: plantModel);
        },
        child: Container(
          color: Colors.blueGrey.withOpacity(.05),
          width: double.infinity,
          child: Row(
            children: [
              PlantItemImage(plantModel: plantModel),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        plantModel.title,
                        style: Styles.textStyle25
                            .copyWith(fontStyle: FontStyle.normal,overflow: TextOverflow.ellipsis,),
                      ),
                      Text(
                        plantModel.supTitle,
                        style: Styles.textStyle15.copyWith(color: Colors.grey,overflow: TextOverflow.ellipsis,),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          PlantItemType(plantModel: plantModel),
                          const SizedBox(
                            width: 20,
                          ),
                          PlantItemIcon(plantModel: plantModel),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


