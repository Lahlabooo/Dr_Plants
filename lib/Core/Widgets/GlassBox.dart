import 'dart:ui';

import 'package:flutter/cupertino.dart';

class GlassBox extends StatelessWidget {
  const GlassBox({super.key, required this.borderRadius, required this.x, required this.y, required this.widget});
  final double x,y ;
  final Widget widget ;
  final BorderRadiusGeometry borderRadius ;
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius:borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: y,
          sigmaX: x,
          tileMode: TileMode.clamp,
        ),
        child:widget,
      ),
    );
  }
}
