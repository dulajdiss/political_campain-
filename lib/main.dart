import 'package:flutter/material.dart';
import 'package:untitled/ui/landing_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'අනුරාධ ජයරත්න';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: LandingPage(
        title: '',
      ),
    );
  }
}
