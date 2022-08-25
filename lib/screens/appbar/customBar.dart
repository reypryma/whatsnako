import 'dart:js';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../utils/images.dart';

AppBar appBar(BuildContext context, {double? avatarSize, String? titleApp, List<Widget>? actions, String? userAvatar, bool showBack = false, required Color bgColor, Color? iconColor, Color? textColor, double? elevation}) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: bgColor,
    leading: showBack
        ? IconButton(
      onPressed: () {
        finish(context);
      },
      icon: Icon(Icons.arrow_back, color: iconColor),
    )
        : Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
      children: [
          CircleAvatar(
            radius: 15,
            child: ClipOval(
                child: commonCachedNetworkImage(userAvatar!, fit: BoxFit.cover, height: avatarSize ?? 60, width: avatarSize ?? 60)),
          ),
      ],
    ),
        ),
    title: titleApp != null ? appBarTitleWidget(context, titleApp, textColor: textColor ?? white, color: bgColor) : null,
    actions: actions,
    elevation: elevation ?? 0.5,
  );
}

Widget appBarTitleWidget(context, String title, {Color? color, Color? textColor}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 60,
    color: color ?? Colors.black45,
    child: Row(
      children: <Widget>[
        Text(
          title,
          style: boldTextStyle(color: textColor, size: 20),
          maxLines: 1,
        ).expand(),
      ],
    ),
  );
}


