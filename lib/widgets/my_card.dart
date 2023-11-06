import 'package:flutter/material.dart';

import 'my_text.dart';

class MyCard extends StatelessWidget {
  final Color bubble_color;
  final String title;
  final String? subtitle;
  final String count;
  const MyCard(
      {super.key,
      required this.bubble_color,
      required this.title,
      this.subtitle,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width / 1.2,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 10)]),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundColor: Color(0xFF0AAAC1).withOpacity(0.1),
                  child: Image(
                      image: AssetImage(
                    "././assets/images/Vector.png",
                  )),
                  radius: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: title,
                      font_size: 10,
                      font_weight: FontWeight.w500,
                    ),
                    subtitle != null
                        ? MyText(
                            text: subtitle ?? "",
                            font_size: 8,
                            color: Colors.black54,
                          )
                        : Container(),
                    MyText(
                      text: count,
                      font_size: 10,
                      color: Color(0xFF0AAAC1),
                      font_weight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Stack(children: [
                Positioned(
                  right: 30,
                  top: 15,
                  child: Image(
                    image: AssetImage(
                      "././assets/images/stats_card_image.png",
                    ),
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 30,
                  bottom: -20,
                  child: Image(
                    image: AssetImage(
                      "././assets/images/bottle.png",
                    ),
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    right: 25,
                    bottom: 15,
                    child: CircleAvatar(
                      backgroundColor: bubble_color,
                      radius: 1.5,
                    )),
                Positioned(
                    right: 27,
                    bottom: 32,
                    child: CircleAvatar(
                      backgroundColor: bubble_color,
                      radius: 1,
                    )),
                Positioned(
                    right: 25,
                    bottom: 48,
                    child: CircleAvatar(
                      backgroundColor: bubble_color,
                      radius: 3,
                    )),
                Positioned(
                    right: 40,
                    bottom: 57,
                    child: CircleAvatar(
                      backgroundColor: bubble_color,
                      radius: 1.5,
                    )),
                Positioned(
                    left: 45,
                    bottom: 70,
                    child: CircleAvatar(
                      backgroundColor: bubble_color,
                      radius: 5,
                    )),
                Positioned(
                    left: 90,
                    bottom: 15,
                    child: CircleAvatar(
                      backgroundColor: bubble_color,
                      radius: 2,
                    )),
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
