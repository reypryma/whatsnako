import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:whatsnako/screens/appbar/customBar.dart';
import 'package:whatsnako/screens/mobile_fragments/contact_list_fragment.dart';
import 'package:whatsnako/theme/colors.dart';
import 'package:whatsnako/utils/images.dart';

import '../../utils/info.dart';

class ChatListWidget extends StatefulWidget {
  const ChatListWidget({Key? key}) : super(key: key);

  @override
  _ChatListWidgetState createState() => _ChatListWidgetState();
}

class _ChatListWidgetState extends State<ChatListWidget> {
  var chatInfo = info;

  @override
  Widget build(BuildContext context) {
    var actionChatBar = [
      //16
      IconButton(icon: const Icon(Icons.message, color: Colors.grey, ), onPressed: () {}),
      IconButton(icon: const Icon(Icons.more_vert, color: Colors.grey, ), onPressed: () {}),
    ];

    return Scaffold(
        appBar: appBar(context, userAvatar: WhatsNakoImage.profileNako, bgColor: WhatsNakoColor.webAppBarColor, actions: actionChatBar),
        body: Container(
          height: context.height(),
            decoration: BoxDecoration(
              color: WhatsNakoColor.sidebarColor,
              border: Border(
                right: BorderSide(
                  color: const Color(0xffcfd0d3).withOpacity(.3)
                )
              )
            ),
            child: ContactListFragment()),
    );
  }
}
