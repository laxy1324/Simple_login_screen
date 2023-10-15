import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
// import 'package:login_test/firebase_options.dart';
import 'pages/login_screen.dart';
import 'pallete.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(const MyApp());
  doWhenWindowReady(() {
    final win = appWindow;
    const initialSize = Size(508, 570);
    win.minSize = initialSize;
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "Simple Signin for web & desktop";
    win.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: true,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor,
      ),
      home: const TestApp3(),
    );
  }
}
