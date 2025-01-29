import 'package:fisch_pedia/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FischPedia());
}

class FischPedia extends StatelessWidget {
  const FischPedia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fisch Pedia',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
