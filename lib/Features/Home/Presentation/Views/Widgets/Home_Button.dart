import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planta/Core/Utils/App_Routers.dart';

import '../../../../../Core/Utils/Styles.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: GestureDetector(
        onTap: (){
          GoRouter.of(context).push(AppRouters.kScanPage);
        },
        child: Container(
          decoration: BoxDecoration(
              gradient:const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.lime,
                  Colors.green,
                ],
              ),
              borderRadius: BorderRadiusDirectional.circular(20.0)
          ),
          width: 170,
          height: 50,
          child:  Center(
            child:  Text(
                "Scan Now ",
                style:Styles.textStyle18.copyWith(color: Colors.black)
            ),
          ),
        
        ),
      ),
    );
  }
}

