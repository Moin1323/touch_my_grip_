import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gr1p_ai/widgets/big_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final ColorScheme myColors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
            ),
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: SingleChildScrollView(
                // Main Column
                child: Column(
                  children: [
                    //TOP
                    const SizedBox(height: 80),

                    //MID
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hey, \nRegister Now!",
                            style: GoogleFonts.ptSerif(
                              color: myColors.secondary,
                              fontWeight: FontWeight.w500,
                              fontSize: 38,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.popAndPushNamed(
                                      context, '/login_screen');
                                },
                                child: Text(
                                  "I am A Old User /",
                                  style: GoogleFonts.ptSerif(
                                    color: myColors.secondary.withOpacity(0.5),
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Create New",
                                style: GoogleFonts.ptSerif(
                                  color: myColors.secondary,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 80),
                          Text(
                            "Join Us Today!",
                            style: GoogleFonts.ptSerif(
                              color: myColors.secondary,
                              fontWeight: FontWeight.w800,
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            "Tap the link below to complete your sign-up on our website. It only takes a moment, and you’ll be all set to go!",
                            style: GoogleFonts.ptSerif(
                              color: myColors.secondary.withOpacity(0.5),
                              fontSize: 17,
                            ),
                          ),

                          const SizedBox(height: 80),

                          //END
                          SizedBox(
                            child: Column(
                              children: [
                                BigButton(onTap: () {}, txt: "Register Now"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
