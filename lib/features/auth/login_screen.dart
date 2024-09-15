import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gr1p_ai/widgets/big_button.dart';
import 'package:gr1p_ai/widgets/my_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final ColorScheme myColors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
              color: myColors.surface,
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
                            "Hey, \nLogin Now!",
                            style: GoogleFonts.ptSerif(
                              color: myColors.secondary,
                              fontWeight: FontWeight.w500,
                              fontSize: 38,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              Text(
                                "I am A Old User /",
                                style: GoogleFonts.ptSerif(
                                  color: myColors.secondary,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 17,
                                ),
                              ),
                              const SizedBox(width: 10),
                              GestureDetector(
                                onTap: () {
                                  Navigator.popAndPushNamed(
                                      context, '/register_screen');
                                },
                                child: Text(
                                  "Create New",
                                  style: GoogleFonts.ptSerif(
                                    color: myColors.secondary.withOpacity(0.5),
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          const MyTextField(
                              hintText: "Exarth",
                              suffix: Icon(
                                Icons.check,
                                size: 17,
                              )),
                          const SizedBox(height: 30),
                          const MyTextField(
                            hintText: "Password",
                            suffix: Icon(
                              Icons.visibility,
                              size: 17,
                            ),
                          ),
                          const SizedBox(height: 40),
                          Row(
                            children: [
                              Text(
                                "Forgot Passowrd /",
                                style: GoogleFonts.ptSerif(
                                  color: myColors.secondary.withOpacity(0.5),
                                  fontSize: 17,
                                ),
                              ),
                              const SizedBox(width: 10),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, '/password_screen');
                                },
                                child: Text(
                                  "Reset",
                                  style: GoogleFonts.ptSerif(
                                    color: myColors.secondary,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 80),

                          //END
                          SizedBox(
                            child: Column(
                              children: [
                                BigButton(
                                    onTap: () {
                                      Navigator.popAndPushNamed(
                                          context, '/main_screen');
                                    },
                                    txt: "Login Now"),
                                const SizedBox(height: 40),
                                Text(
                                  "Skip Now",
                                  style: GoogleFonts.ptSerif(
                                    color: myColors.secondary.withOpacity(0.5),
                                    fontWeight: FontWeight.w800,
                                    fontSize: 17,
                                  ),
                                ),
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
