import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget {
  final String image_name;
  final Function()? onPressed;
  const SocialCard({super.key, required this.image_name, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          height: 50,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey.shade200,
              )),
          child: Image.asset(
            "././assets/icons/$image_name.png",
          )),
    );
  }
}
