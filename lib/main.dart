import 'package:flutter/material.dart';

import 'ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Bohongan',
      theme: ThemeData(
        // fontFamily: 'OpenSans',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xff075e54),
          secondary: const Color(0xff128c7e),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
