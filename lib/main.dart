import 'package:cut_my_garden/routes/go_routes.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const CutMyGardenWebApp());
}

class CutMyGardenWebApp extends StatelessWidget {
  const CutMyGardenWebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Cut My Garden',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: GoRouterHelperClass.router,
    );
  }
}
