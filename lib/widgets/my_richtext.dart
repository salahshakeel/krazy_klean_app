import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyRichText extends StatelessWidget {
  final List<InlineSpan>? children;
  final double? font_size;
  final Color? color;
  final FontWeight? font_weight;
  final TextAlign? align;
  const MyRichText(
      {super.key,
      this.children,
      this.font_size,
      this.color,
      this.font_weight,
      this.align});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: align ?? TextAlign.center,
      text: TextSpan(
        style: GoogleFonts.poppins(
            color: color ?? Colors.black,
            fontSize: font_size ?? 30,
            fontWeight: font_weight),
        children: children ?? [],
      ),
    );
  }
}
