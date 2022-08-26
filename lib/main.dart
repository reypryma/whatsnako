import 'package:flutter/material.dart';
import 'package:whatsnako/screens/minimal_condition.dart';
import 'package:whatsnako/screens/mobile_responsive.dart';
import 'package:whatsnako/screens/web_responsive.dart';
import 'package:whatsnako/theme/dark_whatsapp.dart';
import 'package:whatsnako/utils/constants.dart';
import 'package:whatsnako/utils/responsive_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APPS_NAME,
      theme: AppTheme.WhatsappDark,
      home: const ScreenOptions(
          mobileScreenLayout: MobileResponsive(),
          webScreenLayout: WebResponsive(), minimalScreenLayout: MinimalCondition()),
    );
  }
}

class ScreenOptions extends StatefulWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  final Widget minimalScreenLayout;

  const ScreenOptions(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webScreenLayout, required this.minimalScreenLayout})
      : super(key: key);

  @override
  State<ScreenOptions> createState() => _ScreenOptionsState();
}

class _ScreenOptionsState extends State<ScreenOptions> {
  var scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (ResponsiveHelper.isDesktop(context) || ResponsiveHelper.isTab(context)) {
        return widget.webScreenLayout;
      } else if (constraints.maxWidth <= 360) {
        return widget.minimalScreenLayout;
      }
      else {
        return Container(child: widget.mobileScreenLayout);
      }
    });
  }
}
