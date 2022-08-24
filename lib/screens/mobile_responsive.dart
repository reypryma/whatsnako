import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:whatsnako/utils/constants.dart';
import 'package:whatsnako/utils/images.dart';

import '../theme/colors.dart';
import 'mobile_fragments/contact_list_fragment.dart';
import 'mobile_fragments/view_calls_fragment.dart';
import 'mobile_fragments/view_status_fragment.dart';

class MobileResponsive extends StatefulWidget {
  const MobileResponsive({Key? key}) : super(key: key);

  @override
  State<MobileResponsive> createState() => _MobileResponsiveState();
}

class _MobileResponsiveState extends State<MobileResponsive> {
  @override
  Widget build(BuildContext context) {
    double widthStart = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
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
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(WhatsNakoImage.bgThanks),
              opacity: .2,
              fit: BoxFit.cover,
            ),
          ),
          height: double.maxFinite,
          width: 900,
          child: TabBarView(
            children: [
              ContactListFragment(),
              ViewStatusFragment(),
              ViewCallsFragment(),
            ],
          ),
        ),
      ),
    );
  }
}
