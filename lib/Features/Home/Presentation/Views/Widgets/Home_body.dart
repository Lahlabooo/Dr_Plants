
import 'package:flutter/material.dart';
import 'package:planta/Core/Utils/Styles.dart';
import 'package:planta/Features/Home/Presentation/Views/Widgets/Category_Gridel_List.dart';
import 'package:planta/Features/Home/Presentation/Views/Widgets/Home_appBar.dart';
import 'Home_Button.dart';
import 'Home_Carousel_Slider.dart';
import 'Home_Header.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const  Padding(
      padding:   EdgeInsets.symmetric(horizontal: 15),
      child:   SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             HomeAppbar(),
             HomeHeader(),
            HomeCarouselSlider(),
             SizedBox(height: 25,),
            HomeButton(),
            SizedBox(height: 25,),
             Divider(
              color: Colors.white,
              thickness: .3 ,),
             SizedBox(height: 15,),
             Text("Category.. ",style: Styles.textStyle30,),
            SizedBox(height: 10,),
            CategoryList(),

         ],

        ),
      ),
    );
  }
}


