import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../utils/constants.dart';
import '../utils/images.dart';
import 'mobile_fragments/contact_list_fragment.dart';
import 'mobile_fragments/view_calls_fragment.dart';
import 'mobile_fragments/view_status_fragment.dart';

class MinimalCondition extends StatelessWidget {
  const MinimalCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: 360,
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: WhatsNakoColor.appBarColor,
              centerTitle: false,
              title: const Text(
                APPS_NAME,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.grey),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.grey),
                  onPressed: () {},
                ),
              ],
              bottom: const TabBar(
                indicatorColor: WhatsNakoColor.tabColor,
                indicatorWeight: 4,
                labelColor: WhatsNakoColor.tabColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                  Tab(
                    text: 'CHATS',
                  ),
                  Tab(
                    text: 'STATUS',
                  ),
                  Tab(
                    text: 'CALLS',
                  ),
                ],
              ),
            ),
            body: Container(
              width: 360,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      WhatsNakoColor.sidebarColor.withOpacity(0.3),
                      BlendMode.dstATop),
                  image: const AssetImage(WhatsNakoImage.bgThanks),
                  fit: BoxFit.cover,
                ),
              ),
              height: double.maxFinite,
              child: const TabBarView(
                children: [
                  ContactListFragment(),
                  ViewStatusFragment(),
                  ViewCallsFragment(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}