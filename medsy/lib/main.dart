import 'package:flutter/material.dart';
import 'package:medsy/pages/HomePage.dart';

void main() {
  runApp(const MedsyApp());
}

class MedsyApp extends StatelessWidget {
  const MedsyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xff5555F0),
            primary: const Color(0xff5555F0),
            secondary: const Color(0xffEEEEEE),
            surface: Colors.white,
            background: Colors.white),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
