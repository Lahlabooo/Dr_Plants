import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:planta/Core/Utilis/Styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.img,
      required this.title,
      required this.supTitle});
  final String img;
  final String title;
  final String supTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(img),
          const SizedBox(
            height: 15,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 10,
          ),
          Opacity(
            opacity: .5,
            child: Text(
                textAlign: TextAlign.center,
                supTitle,
                maxLines: 2,
                style: Styles.textStyle20),
          ),
        ],
      ),
    );
  }
}
