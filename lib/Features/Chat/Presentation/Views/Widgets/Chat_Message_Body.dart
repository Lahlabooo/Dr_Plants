import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:planta/Core/Utils/AssetData.dart';
import 'package:planta/Features/Chat/Presentation/Manager/cubit/get_messages_cubit.dart';

class ChatMessageBody extends StatelessWidget {
  const ChatMessageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetMessagesCubit,GetMessagesState>(
      builder: (context, state) {
        return  Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: DashChat(
              inputOptions: InputOptions(
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
                inputToolbarPadding:
                const EdgeInsets.only(bottom: 5, top: 5, left: 30, right: 12),
                inputTextStyle: TextStyle(
                  color: Colors.white.withOpacity(.8),
                ),
                inputToolbarMargin:
                const EdgeInsets.only(bottom: 5, top: 20, left: 15, right: 15),
                inputToolbarStyle: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white.withOpacity(.2),
                  border: Border.all(
                      color: Colors.white, width: 1, style: BorderStyle.solid),
                ),
              ),
              messageOptions: MessageOptions(
                currentUserTextColor: Colors.white.withOpacity(1),
                showOtherUsersAvatar: true,
                avatarBuilder: (x, y, z) => Padding(
                  padding: const EdgeInsets.only(right: 5.0, left: 3),
                  child: CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.white.withOpacity(.2),
                      child: Image.asset(
                        AssetData.homeLogo,
                        height: 20,
                      )),
                ),
                showTime: true,
                textColor: Colors.white.withOpacity(.8),
                containerColor: Colors.white.withOpacity(.15),
                currentUserContainerColor: Colors.white.withOpacity(.15),
              ),
              typingUsers: GetMessagesCubit.get(context).typing,
              currentUser: GetMessagesCubit.get(context).myself,
              onSend: (ChatMessage m) {
                GetMessagesCubit.get(context).getMessages(m: m);
              },
              messages: GetMessagesCubit.get(context).allMassages,
            ),
          ),
        );
      },

    );
  }
}
