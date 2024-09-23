
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Avatar_Builder.dart';

class ChatMessageBody extends StatelessWidget {
  const ChatMessageBody({super.key});

  @override
  Widget build(BuildContext context) {
    ChatUser myself = ChatUser(id: "1", firstName: "Me");
    return  Expanded(
      child: Padding(
        padding:
        const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        child: DashChat(
          inputOptions: buildInputOptions(),
          messageOptions: buildMessageOptions(),
          currentUser: myself,
          onSend: (ChatMessage message) {  },
          messages: const [],
        ),
      ),
    );
  }

  InputOptions buildInputOptions() {
    return InputOptions(
      inputDecoration: InputDecoration(
        hintText: 'Enter Your Message',
        hintStyle: TextStyle(
            color: Colors.white.withOpacity(.5),
            fontWeight: FontWeight.w400),
        border: InputBorder.none,
        icon: FaIcon(
          FontAwesomeIcons.pen,
          color: Colors.white.withOpacity(.5),
        ),
      ),
      alwaysShowSend: true,
      sendButtonBuilder: (onSend) {
        return IconButton(
          icon: const Icon(
            Icons.send,
            color: Colors.lightGreenAccent,
            size: 30,
          ),
          onPressed: onSend,
          // Customize the button's appearance as needed
        );
      },
      inputToolbarPadding: const EdgeInsets.only(
          bottom: 5, top: 5, left: 30, right: 12),
      inputTextStyle: TextStyle(
        color: Colors.white.withOpacity(.8),
      ),
      inputToolbarMargin: const EdgeInsets.only(
          bottom: 5, top: 20, left: 15, right: 15),
      inputToolbarStyle: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white.withOpacity(.2),
        border: Border.all(
            color: Colors.white,
            width: 1,
            style: BorderStyle.solid),
      ),
    );
  }

  MessageOptions buildMessageOptions() {
    return MessageOptions(
      currentUserTextColor: Colors.white.withOpacity(1),
      showOtherUsersAvatar: true,
      avatarBuilder: (x, y, z) {
        return const AvatarBuilder();},
      showTime: true,
      textColor: Colors.white.withOpacity(.8),
      containerColor: Colors.white.withOpacity(.15),
      currentUserContainerColor:
      Colors.white.withOpacity(.15),
    );
  }
}

