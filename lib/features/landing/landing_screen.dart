import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gr1p_ai/widgets/small_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme myColors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: myColors.primary,
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get Started",
                      style: GoogleFonts.ptSerif(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "Precision With A Hand Scan — Perfect Firearm Match.",
                      style: GoogleFonts.ptSerif(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 38,
                      ),
                    ),
                    const SizedBox(height: 60),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Skip Now",
                            style: GoogleFonts.ptSerif(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontSize: 17,
                            ),
                          ),
                          SmallButton(
                            onTap: () {
                              Navigator.pushNamed(context, '/login_screen');
                            },
                            txt: "Login",
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
