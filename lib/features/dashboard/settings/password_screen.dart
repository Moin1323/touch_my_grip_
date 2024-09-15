import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gr1p_ai/widgets/big_button.dart';
import 'package:gr1p_ai/widgets/my_textfield.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
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
                    SizedBox(
                      height: 80,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: myColors.secondary,
                            )),
                      ),
                    ),

                    //MID
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Update Your \nPassword!",
                            style: GoogleFonts.ptSerif(
                              color: myColors.secondary,
                              fontWeight: FontWeight.w500,
                              fontSize: 38,
                            ),
                          ),
                          const SizedBox(height: 17),
                          Text(
                            "Note",
                            style: GoogleFonts.ptSerif(
                              color: myColors.secondary,
                              fontWeight: FontWeight.w800,
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            "The password must include at least 8 characters, with uppercase and lowercase letters, numbers, and special characters.",
                            style: GoogleFonts.ptSerif(
                              color: myColors.secondary.withOpacity(0.5),
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(height: 45),
                          const MyTextField(
                            hintText: "Old Password",
                          ),
                          const SizedBox(height: 30),
                          const MyTextField(
                            hintText: "New Passowrd",
                            suffix: Icon(
                              Icons.visibility,
                              size: 17,
                            ),
                          ),
                          const SizedBox(height: 30),
                          const MyTextField(
                            hintText: "Confirm Passowrd",
                            suffix: Icon(
                              Icons.visibility,
                              size: 17,
                            ),
                          ),

                          const SizedBox(height: 45),

                          //END
                          BigButton(onTap: () {}, txt: "Submit"),
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
