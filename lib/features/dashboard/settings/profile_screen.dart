import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gr1p_ai/widgets/big_button.dart';
import 'package:gr1p_ai/widgets/my_textfield.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
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
                          const SizedBox(height: 40),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Update Your Profile Details!",
                                style: GoogleFonts.ptSerif(
                                  color: myColors.secondary.withOpacity(0.5),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 17,
                                ),
                              ),
                              const SizedBox(height: 40),
                              const MyTextField(
                                hintText: "First Name",
                              ),
                              const SizedBox(height: 30),
                              const MyTextField(
                                hintText: "Last Name",
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),

                          //END
                          SizedBox(
                            child: Column(
                              children: [
                                BigButton(onTap: () {}, txt: "Submit"),
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
