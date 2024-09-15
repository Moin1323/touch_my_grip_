import 'package:flutter/material.dart';
import 'package:gr1p_ai/features/auth/login_screen.dart';
import 'package:gr1p_ai/features/auth/register_screen.dart';
import 'package:gr1p_ai/features/dashboard/home/home_screen.dart';
import 'package:gr1p_ai/features/dashboard/main_screen.dart';
import 'package:gr1p_ai/features/dashboard/setting_screen.dart';
import 'package:gr1p_ai/features/dashboard/settings/profile_screen.dart';
import 'package:gr1p_ai/features/landing/landing_screen.dart';
import 'package:gr1p_ai/features/dashboard/settings/password_screen.dart';

class AppRoutes {
  static const String landingScreen = '/landing_screen';
  static const String loginScreen = '/login_screen';
  static const String registerScreen = '/register_screen';
  static const String passwordScreen = '/password_screen';
  static const String settingScreen = '/setting_screen';
  static const String profileScreen = '/profile_screen';
  static const String mainScreen = '/main_screen';
  static const String homeScreen = '/home_screen';

  static Map<String, WidgetBuilder> routes = {
    landingScreen: (context) => const LandingScreen(),
    loginScreen: (context) => const LoginScreen(),
    registerScreen: (context) => const RegisterScreen(),
    passwordScreen: (context) => const PasswordScreen(),
    settingScreen: (context) => const SettingScreen(),
    profileScreen: (context) => const ProfileScreen(),
    mainScreen: (context) => const MainScreen(),
    homeScreen: (context) => const HomeScreen(),
  };
}
