import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:planta/Features/Category/data/Model/Plant_item_Model.dart';

import '../../../../../Core/Utils/Styles.dart';
import 'Disease_Section.dart';
import 'Plant_Characteristic.dart';

class PlantDetailedBody extends StatelessWidget {
  const PlantDetailedBody({super.key, required this.plantModel});
final PlantItemModel plantModel ;

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height*.35,
                width: double.infinity,
                child: CachedNetworkImage(imageUrl: plantModel.img,fit: BoxFit.fill,),
      
              ),
            ),
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                children: [
                Text(
                  plantModel.title,
                  style: Styles.textStyle30
                      .copyWith(
                    overflow: TextOverflow.ellipsis,),
                ),
                Text(
                  plantModel.supTitle,
                  style: Styles.textStyle15.copyWith(color: Colors.grey,),
                ),
              ],
              ),
            ),
            const SizedBox(height: 25,),
           const Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PlantCharacteristic(
                      title: 'Temperature',
                      icon: FontAwesomeIcons.temperatureQuarter,
                      iconColor: Colors.red, supTitle: "30^c",),
                    PlantCharacteristic(
                      title: 'Humidity',
                      icon: FontAwesomeIcons.droplet,
                      iconColor: Colors.lightBlueAccent, supTitle: '89%',),
                  ],
                ),
               SizedBox(height: 10,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   PlantCharacteristic(
                     title: 'Light',
                     icon: FontAwesomeIcons.sun,
                     iconColor: Colors.orangeAccent, supTitle: "Full Sun",),
                   PlantCharacteristic(
                     title: 'Wind',
                     icon: FontAwesomeIcons.wind,
                     iconColor: Colors.white, supTitle: 'Sensitive to draft',),
                 ],
               ),
             ],
           ),
            const SizedBox(height: 25,),
            Diseases(plantModel: plantModel,),
      
      
          ],
      ),
    );
  }
}
