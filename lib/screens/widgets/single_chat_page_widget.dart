import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:whatsnako/screens/appbar/customBar.dart';
import 'package:whatsnako/utils/images.dart';

import '../../theme/colors.dart';

class SingleChatPageWidget extends StatefulWidget {
  const SingleChatPageWidget({Key? key}) : super(key: key);

  @override
  _SingleChatPageWidgetState createState() => _SingleChatPageWidgetState();
}

class _SingleChatPageWidgetState extends State<SingleChatPageWidget> {
  @override
  Widget build(BuildContext context) {
    List<Widget> singleChatActionsBar() {
      List<Widget> actions = [];
      actions.add(
        IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            onPressed: () {}),
      );
      actions.add(
        IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            onPressed: () {}),
      );

      return actions;
    }

    return Scaffold(
        appBar: appBar(context,
            titleApp: "Nako Sunao",
            actions: singleChatActionsBar(),
            textColor: Colors.white,
            bgColor: WhatsNakoColor.webAppBarColor,
            userAvatar: WhatsNakoImage.profileNako),
        body: Container(
          height: context.height(),
          width: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(WhatsNakoImage.bgImageWAFull),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [],
          ),
        ));
  }
}
