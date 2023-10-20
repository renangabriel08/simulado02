import 'package:flutter/material.dart';
import 'package:simulado2/pages/home.dart';
import 'package:simulado2/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/splash' :(context) => const Splash(),
        '/home' :(context) => const Home(),
      },
      initialRoute: '/splash',
    );
  }
}