import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBoxWithBorder extends StatelessWidget {
  const GlassBoxWithBorder({super.key, required this.borderRadius, required this.x, required this.y, required this.color, required this.widget});
 final double borderRadius ;
 final double x,y ;
 final Color color ;
 final Widget widget ;
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: y,
          sigmaX: x,
          tileMode: TileMode.clamp,
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: .8),
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
            // border: Border.all(color: c5!.withOpacity(.5),style: BorderStyle.solid,width: 1),
          ),
          child: widget,
        ),
      ),
    );
  }
}
