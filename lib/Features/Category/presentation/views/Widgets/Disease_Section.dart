import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:planta/Core/Widgets/GlassBox_WithBorder.dart';
import 'package:planta/Features/Category/data/Model/Plant_item_Model.dart';
import 'ExpansionListTile1.dart';
import 'ExpansionListTile2.dart';

class Diseases extends StatefulWidget {
  const Diseases({super.key, required this.plantModel,});
  final PlantItemModel plantModel ;
  @override
  State<Diseases> createState() => _LExpansionPanelList();
}
class _LExpansionPanelList extends State<Diseases> {
  int index = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GlassBoxWithBorder(
        borderRadius:30 ,color: Colors.white.withOpacity(.2),x: 100,y: 100,
        widget: SizedBox(
          child:
          ExpansionPanelList(
            expansionCallback: (int i, bool isOpen) {
              setState(() {
                if (index == i) {
                  index = -1;
                } else {
                  index = i;
                }
              });
            },
            animationDuration: const Duration(seconds: 1),
            dividerColor: Colors.black,//fgh
            elevation: 0,
            children: <ExpansionPanel>[
              expansionPanelItem(plantModel: widget.plantModel,
                index: index,
                title: 'Common Problems',
                widget: ExpansionListTile1(plantModel: widget.plantModel,
                ), isExpanded: index == 0,
              ),
              expansionPanelItem(
                plantModel: widget.plantModel,
                  index: index,
                  title: 'Common pests',
                 widget: ExpansionListTile2(plantModel: widget.plantModel,),
                isExpanded: index == 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
ExpansionPanel expansionPanelItem ({
  required PlantItemModel plantModel,
  required int index,
  required String title,
  required Widget widget,
 required bool isExpanded ,
})
{
  return  ExpansionPanel(
    backgroundColor: Colors.transparent,
    headerBuilder: (BuildContext context, bool isExpanded) {
      return    ListTile(
        leading: const FaIcon(FontAwesomeIcons.bug,color: Colors.deepOrangeAccent),
        title:Text(title,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      );
    },
    canTapOnHeader: true,
    body:  widget,
    isExpanded: isExpanded,
  );
}
