import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:planta/Core/Utils/Styles.dart';
import 'package:planta/Features/Category/data/Model/Plant_item_Model.dart';

class PlantItem extends StatelessWidget {
  const PlantItem({super.key, required this.plantModel});
  final PlantItemModel plantModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,bottom: 15),
      child: Container(
        color: Colors.blueGrey.withOpacity(.05),
        //width: double.infinity,
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .14,
              width: MediaQuery.of(context).size.width * .29,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: CachedNetworkImage(
                      imageUrl: plantModel.img,
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Expanded(
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
                        Container(
                          height: MediaQuery.of(context).size.height * .03,
                          width: MediaQuery.of(context).size.height * .09,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: plantModel.type == 'Medium'
                                  ? Colors.lightGreenAccent.withOpacity(.7)
                                  : Colors.tealAccent.withOpacity(.7)),
                          child: Center(
                            child: Text(
                              plantModel.type,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black.withOpacity(.8),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.height * .04,
                          height: MediaQuery.of(context).size.height * .03,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white10,
                          ),
                          child: plantModel.isSuuny
                              ? Icon(
                                  Icons.sunny,
                                  color: Colors.white.withOpacity(.8),
                                  size: 18,
                                )
                              : Icon(
                                  FontAwesomeIcons.cloudSun,
                                  color: Colors.white.withOpacity(.8),
                                  size:18,
                                ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
