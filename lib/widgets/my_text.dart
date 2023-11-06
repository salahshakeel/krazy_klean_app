import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String text;
  final double? font_size;
  final Color? color;
  final FontWeight? font_weight;
  final TextAlign? align;
  const MyText(
      {super.key,
      required this.text,
      this.font_size,
      this.color,
      this.align,
      this.font_weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          color: color, fontWeight: font_weight, fontSize: font_size),
      textAlign: align ?? TextAlign.center,
    );
  }
}
