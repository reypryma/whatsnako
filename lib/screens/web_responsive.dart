import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:whatsnako/screens/widgets/chat_list_widget.dart';
import 'package:whatsnako/screens/widgets/single_chat_page_widget.dart';

import '../theme/colors.dart';

class WebResponsive extends StatefulWidget {
  const WebResponsive({Key? key}) : super(key: key);

  @override
  State<WebResponsive> createState() => _WebResponsiveState();
}

class _WebResponsiveState extends State<WebResponsive> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ChatListWidget().flexible(flex: 19),
        SingleChatPageWidget().flexible(flex: 31),
      ],
    );
  }
}
