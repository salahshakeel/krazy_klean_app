import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

import 'my_text.dart';

class GlobalCard extends StatelessWidget {
  final String item_no;
  final String title;
  final String subtitle;
  final String image;
  const GlobalCard(
      {super.key,
      required this.item_no,
      required this.title,
      required this.subtitle,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey
                      .withOpacity(0.3), // You can change the color and opacity
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes the position of the shadow
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            height: 60,
            width: MediaQuery.of(context).size.width / 1.3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFF0AAAC1).withOpacity(0.1),
                          radius: 25,
                          child: Image(
                            image: AssetImage(
                              "././assets/images/${image}.png",
                            ),
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: title,
                                font_size: 10,
                                font_weight: FontWeight.w600,
                              ),
                              MyText(
                                text: subtitle,
                                font_size: 10,
                                color: Color(0xFF0AAAC1),
                                font_weight: FontWeight.w600,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: SvgIcon(
                      icon: SvgIconData('././assets/svg_icons/love_icon.svg'),
                      size: 20,
                      color: Color(0xFFD60909),
                    ),
                  )
                ]),
          ),
          Positioned(
              left: -25,
              bottom: 15,
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 12,
                child: MyText(
                  text: item_no,
                  color: Colors.white,
                  font_size: 10,
                  font_weight: FontWeight.w600,
                ),
              )),
        ],
      ),
    );
  }
}
