import 'package:flutter/material.dart';

class ViewStatusFragment extends StatefulWidget {
  const ViewStatusFragment({Key? key}) : super(key: key);

  @override
  _ViewStatusFragmentState createState() => _ViewStatusFragmentState();
}

class _ViewStatusFragmentState extends State<ViewStatusFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("View Status"),
      ),
    );
  }
}
