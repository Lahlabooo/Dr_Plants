import 'package:flutter/material.dart';
import 'package:planta/Core/Utils/Styles.dart';
import 'package:planta/Core/Widgets/GlassBox.dart';

class DialogeScanResultItem extends StatelessWidget {
  const DialogeScanResultItem(
      {super.key, required this.txt, required this.title});
  final String txt, title;
  @override
  Widget build(BuildContext context) {
    return GlassBox(
      borderRadius: BorderRadius.circular(20),
      x: 10,
      y: 10,
      widget: Container(
        height: MediaQuery.of(context).size.height * .2,
        width: MediaQuery.of(context).size.width * .28,
        color: Colors.white.withOpacity(.3),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: Styles.textStyle25.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                txt,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle20.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
