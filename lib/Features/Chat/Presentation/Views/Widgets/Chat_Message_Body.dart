import 'dart:convert';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class ChatMessageBody extends StatefulWidget {
  const ChatMessageBody({super.key});

  @override
  State<ChatMessageBody> createState() => _ChatMessageBodyState();
}

class _ChatMessageBodyState extends State<ChatMessageBody> {
  ChatUser myself = ChatUser(id: "1", firstName: "Me");
  ChatUser bot = ChatUser(id: "2", firstName: "Chat GPT");
  List<ChatMessage> allMassages = [];
  List<ChatUser> typing = [];

  final ourUrl =
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyALbFlTaCml13rcs9svyeEIU3jx2N3nLCY";
  final header = {'Content-Type': 'application/json'};

  getData(ChatMessage m) async {
    typing.add(bot);
    allMassages.insert(0, m);
    setState(() {});
    var data = {
      "contents": [
        {
          "parts": [
            {"text": "the response is related to plants  ${m.text} "}
          ]
        }
      ]
    };

    await http
        .post(Uri.parse(ourUrl), headers: header, body: jsonEncode(data))
        .then((value) {
      if (value.statusCode == 200) {
        print(value.body);
        var result = jsonDecode(value.body);
        // print(result["candidates"][0]["content"]["parts"][0]["text"]);
        ChatMessage m1 = ChatMessage(
          user: bot,
          createdAt: DateTime.now(),
          text: result["candidates"][0]["content"]["parts"][0]["text"],
        );
        allMassages.insert(0, m1);
      } else {
        print("Error occurred");
      }
    }).catchError((e) {});
    typing.remove(bot);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                    'asset/images/h5.png',
                    height: 20,
                  )),
            ),
            showTime: true,
            textColor: Colors.white.withOpacity(.8),
            containerColor: Colors.white.withOpacity(.15),
            currentUserContainerColor: Colors.white.withOpacity(.15),
          ),
          typingUsers: typing,
          currentUser: myself,
          onSend: (ChatMessage m) {
            getData(m);
          },
          messages: allMassages,
        ),
      ),
    );
  }
}
