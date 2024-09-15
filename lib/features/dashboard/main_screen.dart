import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:gr1p_ai/features/dashboard/home/home_screen.dart';
import 'package:gr1p_ai/features/dashboard/scan/scan_screen.dart';
import 'package:gr1p_ai/features/dashboard/setting_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages.addAll([
      const HomeScreen(),
      const ScanScreen(),
      const SettingScreen(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        height: 60,
        color: Theme.of(context).colorScheme.surface,
        child: GNav(
          backgroundColor: Theme.of(context).colorScheme.primary,
          color: Colors.black,
          activeColor: Theme.of(context).colorScheme.secondary,
          tabBackgroundColor: Theme.of(context).colorScheme.surface,
          gap: 6,
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 12,
          ),
          selectedIndex: _currentIndex,
          onTabChange: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          tabs: [
            GButton(
              icon: Icons.home,
              iconSize: 25,
              text: 'Home'.toUpperCase(),
              textStyle: GoogleFonts.ptSerif(fontSize: 12),
            ),
            GButton(
              icon: Icons.document_scanner,
              iconSize: 25,
              text: 'Scan'.toUpperCase(),
              textStyle: GoogleFonts.ptSerif(fontSize: 12),
            ),
            GButton(
              icon: Icons.settings,
              iconSize: 25,
              text: 'Settings'.toUpperCase(),
              textStyle: GoogleFonts.ptSerif(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
