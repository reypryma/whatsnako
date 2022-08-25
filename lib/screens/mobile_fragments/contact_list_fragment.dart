import 'dart:html';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../theme/colors.dart';
import '../../utils/info.dart';

class ContactListFragment extends StatefulWidget {
  const ContactListFragment({Key? key}) : super(key: key);

  @override
  _ContactListFragmentState createState() => _ContactListFragmentState();
}

class _ContactListFragmentState extends State<ContactListFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      width: context.width(),
      height: context.height(),
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    title: Text(
                      info[index]['name'].toString(),
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(
                        info[index]['message'].toString(),
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      ),
                      radius: 30,
                    ),
                    trailing: Text(
                      info[index]['time'].toString(),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                const Divider(indent: 85),
              ],
            );
          }),
    );
  }
}
