import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigButton extends StatelessWidget {
  final Function()? onTap;
  final String txt;
  const BigButton({
    super.key,
    required this.onTap,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
          child: Center(
            child: Text(
              txt,
              style: GoogleFonts.ptSerif(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
