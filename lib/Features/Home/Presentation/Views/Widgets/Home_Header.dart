import 'package:flutter/cupertino.dart';

import '../../../../../Core/Utils/AssetData.dart';
import '../../../../../Core/Utils/Styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.2,
      child: Row(
        children: [
          const Opacity(
            opacity: .7,
            child: Text("Find out what's wrong with \nyour plant and "
                "get a plan \nto bring it back to full health. ",
              style: Styles.textStyle15,
              maxLines: 4,overflow: TextOverflow.ellipsis,
            ),
          ),
          const Spacer(),
          Image.asset(AssetData.homeLogo,height: 130,),

        ],
      ),
    );
  }
}