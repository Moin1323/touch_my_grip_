import 'package:flutter/material.dart';
import 'package:gr1p_ai/globals/routes.dart';

import 'globals/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.landingScreen,
      routes: AppRoutes.routes,
      // themeMode:ThemeClass.lightMode,
      theme: ThemeClass.lightMode,
      // darkTheme: ThemeClass.darkMode,
    );
  }
}
