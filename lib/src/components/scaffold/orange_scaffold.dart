import 'package:flutter/material.dart';

class OrangeScaffold extends StatefulWidget {
  const OrangeScaffold({Key? key, required this.title, required this.body}) : super(key: key);
  final String title;
  final Widget body;
  @override
  State<OrangeScaffold> createState() => _OrangeScaffoldState();
}

class _OrangeScaffoldState extends State<OrangeScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
        child: widget.body,
      ),
    );
  }
}
