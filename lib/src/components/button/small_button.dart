import 'package:flutter/material.dart';

class SmallButton extends StatefulWidget {
  const SmallButton({Key? key, required this.loading, required this.future, required this.onPressed, required this.text}) : super(key: key);
  final bool loading;
  final Future future;
  final VoidCallback onPressed;
  final String text;
  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  @override
  Widget build(BuildContext context) {
    if(!widget.loading){
      return TextButton(onPressed: widget.onPressed, child: Text(widget.text));
    }
    return FutureBuilder(builder: (context,s){
      Widget content;
      switch(s.connectionState){

        case ConnectionState.none:
          content=const Text('None');
          break;
        case ConnectionState.waiting:
          content=const CircularProgressIndicator();
          break;
        case ConnectionState.active:
          content=const CircularProgressIndicator();
          break;
        case ConnectionState.done:
          if(s.hasData){
            content=const Text('Done');
          }else {
            content=const Text('Error');
          }
          break;
      }
      return TextButton(onPressed: widget.onPressed, child: content);
    },
      key: const ValueKey('smallButton'),
      future: widget.future,
    );
  }
}
