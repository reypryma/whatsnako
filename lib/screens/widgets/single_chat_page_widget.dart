import 'dart:math';

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
            children: [
              //This is For Saving list single CHat
              Expanded(flex: 1, child: Container()),
              //This is For bottom send area
              Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: WhatsNakoColor.chatBarMessage,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24.0))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                                child: ClipOval(
                              child: Material(
                                color: Colors.transparent,
                                // button color
                                child: InkWell(
                                  splashColor: Colors.white,
                                  // inkwell color
                                  child: const SizedBox(
                                      width: 44,
                                      height: 44,
                                      child: Icon(
                                        Icons.emoji_emotions,
                                        size: 24,
                                        color: WhatsNakoColor.iconOnTextField,
                                      )),
                                  onTap: () {},
                                ),
                              ),
                            )),
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 4),
                                child: TextField(
                                  maxLines: 6,
                                  minLines: 1,
                                  style: const TextStyle(
                                      color: WhatsNakoColor.textOnTextField),
                                  decoration: InputDecoration(
                                    hintText: "Type a message...",
                                    isDense: true,
                                    hintStyle: TextStyle(
                                        color: WhatsNakoColor.textOnTextField
                                            .withAlpha(220)),
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                ),
                              ),
                            ),
                            Container(
                                child: ClipOval(
                              child: Material(
                                color: Colors.transparent,
                                // button color
                                child: InkWell(
                                  splashColor: Colors.white,
                                  // inkwell color
                                  child: SizedBox(
                                      width: 44,
                                      height: 44,
                                      child: Transform.rotate(
                                        angle: -pi / 4,
                                        child: const Icon(
                                          Icons.attach_file_outlined,
                                          size: 24,
                                          color: WhatsNakoColor.iconOnTextField,
                                        ),
                                      )),
                                  onTap: () {},
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 8, bottom: 4),
                        child: ClipOval(
                          child: Material(
                            color: WhatsNakoColor.btnColor,
                            child: InkWell(
                              splashColor: Colors.white,
                              // inkwell color
                              child: SizedBox(
                                  width: 42,
                                  height: 42,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 4),
                                    child: Icon(
                                      Icons.send,
                                      size: 22,
                                      color: WhatsNakoColor.iconOnBtn,
                                    ),
                                  )),
                              onTap: () {},
                            ),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
