import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gr1p_ai/widgets/scroll_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ColorScheme myColors = Theme.of(context).colorScheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: myColors.surface,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //P R O F I L E   A N D   N O T I F I C A T I O N
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                                'lib/assets/images/profile.png'), // Profile Image
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello, Molin',
                                style: GoogleFonts.ptSerif(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: myColors.secondary,
                                ),
                              ),
                              Text(
                                'molin@gmail.com',
                                style: TextStyle(
                                  color: myColors.secondary.withOpacity(0.5),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            size: 30,
                            color: myColors.secondary,
                          )),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // D E T A I L E S  R O W
              SizedBox(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Types of Guns',
                          style: GoogleFonts.ptSerif(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: myColors.secondary,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'see all',
                            style: GoogleFonts.ptSerif(
                              fontSize: 18,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const ScrollRow(), //scrollable row
                  ],
                ),
              ),

              //P R O D U C T   D E T A I L
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Guns for you',
                      style: GoogleFonts.ptSerif(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: myColors.secondary,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const ItemsRow()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemsRow extends StatelessWidget {
  const ItemsRow({super.key});

  @override
  Widget build(BuildContext context) {
    int totalItems = 10; // Adjust the number of items
    // Initialize PageController with the center item as the initial page
    PageController pageController = PageController(
      initialPage: totalItems ~/ 2,
      viewportFraction: 0.8,
    );

    return SizedBox(
      height: 335, // Adjust height as needed
      child: PageView.builder(
        controller: pageController,
        itemCount: totalItems,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: pageController,
            builder: (context, child) {
              // Calculate the scale based on the current page position
              double value =
                  pageController.page ?? pageController.initialPage.toDouble();
              double scale =
                  (1 - ((value - index).abs() * 0.1)).clamp(0.9, 1.0);

              return Transform.scale(
                scale: scale,
                child: child,
              );
            },
            child: GestureDetector(
              onTap: () {
                // Define what happens when the card is tapped
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        'lib/assets/images/profile.png', // Replace with your asset path
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Revolver Gun', // Title
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Powerful precision in every pull of the trigger.',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
