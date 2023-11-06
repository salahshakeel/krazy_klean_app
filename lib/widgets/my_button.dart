import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String? text;
  final double? height;
  final double? width;
  final Widget? child;
  final Function() onPressed;
  const MyButton(
      {super.key,
      this.text,
      required this.onPressed,
      this.height,
      this.width,
      this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        height: height ?? 40,
        width: width ?? MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              child ?? Container(),
              Text(text ?? "", style: GoogleFonts.poppins(color: Colors.white)),
            ],
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xFFFA9D30)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            )),
          ),
        ),
      ),
    );
  }
}
