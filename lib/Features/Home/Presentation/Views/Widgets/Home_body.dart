import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planta/Core/Utils/App_Routers.dart';
import 'package:planta/Core/Utils/Styles.dart';
import 'package:planta/Core/Widgets/App_Button.dart';
import 'package:planta/Features/Home/Presentation/Views/Widgets/Category_Gridel_List.dart';
import 'package:planta/Features/Home/Presentation/Views/Widgets/Home_appBar.dart';
import 'Home_Carousel_Slider.dart';
import 'Home_Header.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAppbar(),
            const HomeHeader(),
            const HomeCarouselSlider(),
            const SizedBox(
              height: 25,
            ),
            AppButton(
              width: 170,
              height: 50,
              title: 'Scan Now',
              onTap: () {
                GoRouter.of(context).push(AppRouters.kScanPage);
              },
            ),
            const SizedBox(
              height: 25,
            ),
            const Divider(
              color: Colors.white,
              thickness: .3,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              " Category",
              style: Styles.textStyle30,
            ),
            const SizedBox(
              height: 10,
            ),
            const CategorySection(),
          ],
        ),
      ),
    );
  }
}
