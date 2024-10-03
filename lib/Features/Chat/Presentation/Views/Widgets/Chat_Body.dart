
import 'package:flutter/material.dart';
import 'Chat_AppBar.dart';
import 'Chat_Message_Body.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          ChatAppBar(),
          SizedBox(height: 20,),
          ChatMessageBody(),
        ],
      ),
    );
  }
}




