import 'package:flutter/material.dart';
import 'package:whatsnako/screens/widgets/chat_widget.dart';

class DetailSingleChatScreens extends StatelessWidget {
  const DetailSingleChatScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(

                  ),
                )
              ],
            );
          }),
    );
  }
}
