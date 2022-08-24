import 'package:flutter/material.dart';
import 'package:whatsnako/screens/mobile_responsive.dart';
import 'package:whatsnako/screens/web_responsive.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenOptions(mobileScreenLayout: MobileResponsive(), webScreenLayout:  WebResponsive()),
    );
  }
}

class ScreenOptions extends StatefulWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ScreenOptions({Key? key, required this.mobileScreenLayout, required this.webScreenLayout}) : super(key: key);

  @override
  State<ScreenOptions> createState() => _ScreenOptionsState();
}

class _ScreenOptionsState extends State<ScreenOptions> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
        if (ResponsiveHelper.isDesktop(context) || constraints.maxWidth > 900) {
          return widget.webScreenLayout;
        }  else{
          return widget.mobileScreenLayout;
        }
    });
  }
}
