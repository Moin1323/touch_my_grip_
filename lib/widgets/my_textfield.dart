import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  @override
  final Key? key;
  final String hintText;
  final String? labelText;
  final IconData? prefixIcon;
  final bool? obscureText;
  final GlobalKey<FormFieldState>? formFieldKey;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Widget? suffix;

  const MyTextField({
    this.key,
    required this.hintText,
    this.labelText,
    this.prefixIcon,
    this.obscureText = false,
    this.formFieldKey,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.focusNode,
    this.suffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: TextFormField(
            key: formFieldKey,
            obscureText: obscureText ?? false,
            controller: controller,
            focusNode: focusNode,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
              labelText: labelText,
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              suffixIconColor: Colors.black,
              suffixIcon: suffix != null
                  ? Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: suffix,
                      ),
                    )
                  : null, // Set suffixIcon to null if suffix is null
              hintStyle: GoogleFonts.ptSerif(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color:
                      Theme.of(context).colorScheme.tertiary.withOpacity(0.05),
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              filled: true,
              fillColor:
                  Theme.of(context).colorScheme.tertiary.withOpacity(0.05),
            ),
          ),
        ),
      ],
    );
  }
}
