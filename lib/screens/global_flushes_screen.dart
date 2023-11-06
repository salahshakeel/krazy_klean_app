import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:krazy_klean_app/widgets/auth_appbar.dart';
import 'package:krazy_klean_app/widgets/global_card.dart';
import 'package:krazy_klean_app/widgets/my_text.dart';

import '../widgets/my_bottomnavbar.dart';

class GlobalFlushesScreen extends StatefulWidget {
  const GlobalFlushesScreen({super.key});

  @override
  State<GlobalFlushesScreen> createState() => _GlobalFlushesScreenState();
}

class _GlobalFlushesScreenState extends State<GlobalFlushesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AuthAppbar(
              showBackButton: false,
              backgroundColor: Color(0xFF4EC6D7),
              height: 50,
            )),
        body: SafeArea(
            child: Container(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFF4EC6D7),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(110),
                        bottomRight: Radius.circular(110),
                      ),
                    ),
                    child: Column(
                      children: [
                        MyText(
                          text: "Global Flushes",
                          font_size: 25,
                          font_weight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyText(text: "TODAY'S", color: Colors.white),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    height: 3,
                                    width: 70,
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  MyText(text: "WEEKLY", color: Colors.white),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    height: 1,
                                    width: 100,
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  MyText(
                                      text: "ALL TIMES", color: Colors.white),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    height: 1,
                                    width: 70,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    bottom: -20,
                    left: 30,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(
                                      0.3), // You can change the color and opacity
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0,
                                      3), // changes the position of the shadow
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 40,
                              child: Image(
                                image: AssetImage(
                                  "././assets/images/usa_image.png",
                                ),
                                height: 45,
                                width: 45,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 68,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 12,
                                  child: MyText(
                                    text: "1",
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: MyText(
                                    text: "UNITED STATE",
                                    font_size: 10,
                                    font_weight: FontWeight.w600,
                                  ),
                                ),
                                MyText(
                                  text: "1",
                                  color: Colors.grey,
                                  font_size: 10,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned.fill(
                    bottom: -40,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(
                                      0.3), // You can change the color and opacity
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0,
                                      3), // changes the position of the shadow
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 50,
                              child: Image(
                                image: AssetImage(
                                  "././assets/images/canada_image.png",
                                ),
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 88,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 12,
                                  child: MyText(
                                    text: "2",
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: MyText(
                                    text: "CANADA",
                                    font_size: 10,
                                    font_weight: FontWeight.w600,
                                  ),
                                ),
                                MyText(
                                  text: "2",
                                  color: Colors.grey,
                                  font_size: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned.fill(
                    bottom: -20,
                    right: 30,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(
                                      0.3), // You can change the color and opacity
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0,
                                      3), // changes the position of the shadow
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 40,
                              child: Image(
                                image: AssetImage(
                                  "././assets/images/australia_image.png",
                                ),
                                height: 45,
                                width: 45,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 68,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 12,
                                  child: MyText(
                                    text: "3",
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: MyText(
                                    text: "AUSTRALIA",
                                    font_size: 10,
                                    font_weight: FontWeight.w600,
                                  ),
                                ),
                                MyText(
                                  text: "3",
                                  color: Colors.grey,
                                  font_size: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    GlobalCard(
                      title: "UNITED STATE",
                      subtitle: "01",
                      item_no: "1",
                      image: "usa_image",
                    ),
                    GlobalCard(
                      title: "UNITED STATE",
                      subtitle: "01",
                      item_no: "2",
                      image: "canada_image",
                    ),
                    GlobalCard(
                      title: "UNITED STATE",
                      subtitle: "01",
                      item_no: "3",
                      image: "australia_image",
                    ),
                  ],
                ),
              )
            ]),
          ),
        )),
        bottomNavigationBar: MyBottomNavBar(
          global_color: Color(0xFF07A9BF),
          active_page_mission: true,
          active_page_stats: true,
        ));
  }
}
