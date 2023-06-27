import 'package:cut_my_garden/screens/landing_page/view/landing_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CutMyGardenWebApp());
}

class CutMyGardenWebApp extends StatelessWidget {
  const CutMyGardenWebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cut My Garden',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const LandingScreen(),
    );
  }
}
