import 'dart:async';

import 'package:flutter/material.dart';
import 'package:krazy_klean_app/widgets/my_bottomnavbar.dart';
import 'package:krazy_klean_app/widgets/my_button.dart';
import 'package:krazy_klean_app/widgets/my_card.dart';
import 'package:krazy_klean_app/widgets/my_text.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../widgets/auth_appbar.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  bool isbtnLoading = false;

  Timer? timer;
  Future<void> onFlushBtnClick() async {
    setState(() {
      isbtnLoading = true;
    });

    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        isbtnLoading = false;
        timer.cancel();
        Fluttertoast.showToast(
          msg: "FLUSH NOW",
          backgroundColor: Color(0xFF07A9BF),
          textColor: Colors.white,
        );
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 207, 226, 235),
                      Color(0xFF71C6EF)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 20,
                      child: Image(
                        image: AssetImage("././assets/logos/home_logo.png"),
                      ),
                    ),
                    Positioned(
                      bottom: -40,
                      child: Image(
                        image: AssetImage("././assets/images/toilet_image.png"),
                        fit: BoxFit.cover,
                        height: 200,
                        width: 100,
                      ),
                    ),
                    Positioned(
                        bottom: 140,
                        left: 100,
                        child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Color(0xFF17447E),
                              shape: BoxShape.circle,
                            ))),
                    Positioned(
                        bottom: 100,
                        left: 105,
                        child: Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                              color: Color(0xFF17447E),
                              shape: BoxShape.circle,
                            ))),
                    Positioned(
                        bottom: 125,
                        left: 120,
                        child: Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                              color: Color(0xFF07A9BF),
                              shape: BoxShape.circle,
                            ))),
                    Positioned(
                        bottom: 60,
                        left: 100,
                        child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: Color(0xFF07A9BF),
                              shape: BoxShape.circle,
                            ))),

                    // left
                    Positioned(
                        bottom: 70,
                        right: 100,
                        child: Container(
                            height: 6,
                            width: 6,
                            decoration: BoxDecoration(
                              color: Color(0xFF07A9BF),
                              shape: BoxShape.circle,
                            ))),

                    Positioned(
                        bottom: 100,
                        right: 105,
                        child: Container(
                            height: 3,
                            width: 3,
                            decoration: BoxDecoration(
                              color: Color(0xFF07A9BF),
                              shape: BoxShape.circle,
                            ))),

                    Positioned(
                        bottom: 140,
                        right: 110,
                        child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: Color(0xFF07A9BF),
                              shape: BoxShape.circle,
                            ))),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Color(0xFF4EC6D7),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: MyText(
                        text: "My Statistics",
                        font_weight: FontWeight.w500,
                        color: Colors.white,
                        font_size: 26,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Column(
                          children: [
                            MyCard(
                              bubble_color: Color(0xFF07A9BF),
                              title: "TODAY",
                              subtitle: "FLUSHERS",
                              count: "01",
                            ),
                            MyCard(
                              bubble_color: Color(0xFF07A9BF).withOpacity(0.5),
                              title: "WEEKLY",
                              subtitle: "FLUSHERS",
                              count: "05",
                            ),
                            MyCard(
                              bubble_color: Color(0xFF07A9BF).withOpacity(0.5),
                              title: "TOTALS",
                              subtitle: "FLUSHERS",
                              count: "07",
                            ),
                            MyButton(
                              onPressed: () {
                                isbtnLoading ? null : onFlushBtnClick();
                              },
                              text: "FLUSH NOW",
                              width: MediaQuery.of(context).size.width / 1.2,
                              height: 45,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: isbtnLoading
                                    ? Container(
                                        height: 20,
                                        width: 20,
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 3,
                                        ),
                                      )
                                    : Image(
                                        image: AssetImage(
                                            "././assets/icons/btn_icon.png"),
                                        height: 25,
                                      ),
                              ),
                            )
                          ],
                        ))
                  ]),
                ),
              )
            ]),
          ),
        ),
        bottomNavigationBar: MyBottomNavBar(
          stats_color: Color(0xFF07A9BF),
          active_page_mission: true,
          active_page_global: true,
        ));
  }
}
