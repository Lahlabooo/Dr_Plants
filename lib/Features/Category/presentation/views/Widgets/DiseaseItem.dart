import 'package:flutter/material.dart';

class DiseaseItem extends StatelessWidget {
  const DiseaseItem({super.key, required this.title});
  final String title ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(

        decoration: BoxDecoration(
          color: Colors.red.withOpacity(.5),
          borderRadius: BorderRadiusDirectional.circular(30),
        ),child:  Padding(
        padding: const EdgeInsets.all(10),
        child: Center(child:
        Text(title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style:const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold)
        )
        ),
      ),
      ),
    );
  }
}
