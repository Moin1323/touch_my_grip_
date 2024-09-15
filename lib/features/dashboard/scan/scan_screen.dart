import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gr1p_ai/features/dashboard/scan/camera_secreen.dart';
import 'package:gr1p_ai/widgets/big_button.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  Future<List<CameraDescription>> getCameras() async {
    final cameras = await availableCameras();
    return cameras;
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme myColors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: SafeArea(
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
                                "Start Your Scan Now!",
                                style: GoogleFonts.ptSerif(
                                  color: myColors.secondary,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                "Tap the button below to start scanning instantly. Quick and easy, get your recommendations in no time!",
                                style: GoogleFonts.ptSerif(
                                  color: myColors.secondary.withOpacity(0.5),
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),

                          //END
                          SizedBox(
                            child: Column(
                              children: [
                                BigButton(
                                  onTap: () async {
                                    // Get the list of available cameras
                                    final cameras = await getCameras();

                                    // Navigate to the CameraScreen
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            CameraScreen(cameras: cameras),
                                      ),
                                    );
                                  },
                                  txt: "Scan Now",
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
