import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme myColors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: myColors.surface,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.only(bottom: 40),
                  //       child: SmallButton(
                  //         onTap: () {
                  //           Navigator.popAndPushNamed(
                  //               context, '/landing_screen');
                  //         },
                  //         txt: "Logout",
                  //         color: myColors.primary,
                  //       ),
                  //     )
                  //   ],
                  // ),
                  // Profile Section
                  const CircleAvatar(
                    radius: 65,
                    backgroundImage: AssetImage(
                        'lib/assets/images/profile.png'), // Profile Image
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Molin fee',
                    style: GoogleFonts.ptSerif(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: myColors.secondary,
                    ),
                  ),
                  Text(
                    'molin@gmail.com',
                    style: TextStyle(
                      color: myColors.secondary.withOpacity(0.5),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Settings Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Settings",
                          style: GoogleFonts.ptSerif(
                            color: myColors.secondary.withOpacity(0.5),
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Settings Items
                        _buildSettingItem(
                          context,
                          icon: Icons.person,
                          title: 'Edit Profile',
                          onTap: () {
                            Navigator.pushNamed(context, '/profile_screen');
                          },
                        ),
                        _buildSettingItem(
                          context,
                          icon: Icons.lock,
                          title: 'Password Change',
                          onTap: () {
                            Navigator.pushNamed(context, '/password_screen');
                          },
                        ),
                        _buildSettingItem(
                          context,
                          icon: Icons.favorite,
                          title: 'Favorites',
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/favorites_screen.dart');
                          },
                        ),
                        _buildSettingItem(
                          context,
                          icon: Icons.language,
                          title: 'Language',
                          trailing: 'English',
                          onTap: () {},
                        ),
                        _buildSettingItem(
                          context,
                          icon: Icons.notifications,
                          title: 'Notifications',
                          trailing: 'Enabled',
                          onTap: () {},
                        ),
                        _buildSettingItem(
                          context,
                          icon: Icons.palette,
                          title: 'Theme',
                          trailing: 'Light',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Function to build each setting item
  Widget _buildSettingItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    String? trailing,
    required VoidCallback onTap,
  }) {
    final ColorScheme myColors = Theme.of(context).colorScheme;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: myColors.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
      title: Text(
        title,
        style: GoogleFonts.ptSerif(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: myColors.secondary,
        ),
      ),
      trailing: trailing != null
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                trailing,
                style: TextStyle(color: myColors.secondary.withOpacity(0.5)),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: myColors.secondary.withOpacity(0.5),
              ),
            ),
      onTap: onTap,
    );
  }
}
