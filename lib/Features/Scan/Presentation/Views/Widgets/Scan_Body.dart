
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planta/Core/Utils/Styles.dart';
import 'Scan_AppBar.dart';
import 'Scan_PickImage_Section.dart';

class ScanBody extends StatelessWidget {
  const ScanBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(height: 40,),
          const ScanAppBar(),
          const SizedBox(height: 30,),
          const Text('Select Image !',style: Styles.textStyle25,),
          const SizedBox(height: 25,),
          const ScanPickImageSection(),
          const  SizedBox(height: 40,),
          SizedBox(
            height: MediaQuery.of(context).size.height*.2,
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/images/2.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



