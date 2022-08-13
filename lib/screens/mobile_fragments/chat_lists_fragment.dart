import 'dart:html';

import 'package:flutter/material.dart';

class ChatListsFragment extends StatefulWidget {
  const ChatListsFragment({Key? key}) : super(key: key);

  @override
  _ChatListsFragmentState createState() => _ChatListsFragmentState();
}

class _ChatListsFragmentState extends State<ChatListsFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(("This is Chat List")),
      ),
    );
  }
}
