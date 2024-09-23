import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/Utils/Styles.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(left: 20.0),
      child:  Row(
        children: [
          Icon(FontAwesomeIcons.message,size: 20,),
          SizedBox(width: 10,),
          Text(
            "ChatBot",
            style: Styles.textStyle25,
          ),
        ],
      ),
    );
  }
}