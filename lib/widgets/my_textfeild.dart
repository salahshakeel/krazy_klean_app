import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextfeild extends StatelessWidget {
  final String? hint_text;
  final IconData prefix_icon;
  final IconData? suffix_icon;
  final double? font_size;
  final double? prefix_icon_size;
  final double? suffix_size;
  final bool enable_suffix;
  const MyTextfeild(
      {super.key,
      this.hint_text,
      required this.prefix_icon,
      this.font_size,
      this.prefix_icon_size,
      this.suffix_icon,
      this.suffix_size,
      required this.enable_suffix});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        decoration: InputDecoration(
            fillColor: Colors.grey.shade100,
            filled: true,
            prefixIcon: Icon(
              prefix_icon,
              size: prefix_icon_size ?? 15,
              color: Colors.grey,
            ),
            suffixIcon: enable_suffix
                ? Icon(
                    suffix_icon,
                    size: suffix_size ?? 15,
                    color: Colors.grey,
                  )
                : null,
          
            hintText: hint_text,
            hintStyle: GoogleFonts.poppins(
                fontSize: font_size ?? 12, color: Colors.grey),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent))),
      ),
    );
  }
}
