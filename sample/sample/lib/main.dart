import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_orange_ui/flutter_orange_ui.dart';

void main() {
  runApp(const MyApp());
}
final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp(
          theme: OrangeThemeData.light(),
          darkTheme: OrangeThemeData.dark(),
          debugShowCheckedModeBanner: false,
          home: MyHomePage(themeNotifier: themeNotifier),
          themeMode: currentMode,
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.themeNotifier});
  final ValueNotifier<ThemeMode> themeNotifier;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
 final Future _future = Future.delayed(const Duration(seconds: 2));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('theme'),
        actions: [
          SizedBox(
            height: 30,
            child: CupertinoSwitch(
              activeColor: OrangeColors.blue3,
              trackColor: OrangeColors.warmGrey,
              value: widget.themeNotifier.value != ThemeMode.light,
              onChanged: (value) {
                widget.themeNotifier.value =
                widget.themeNotifier.value == ThemeMode.light
                    ? ThemeMode.dark
                    : ThemeMode.light;
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
