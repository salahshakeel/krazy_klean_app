import 'package:flutter/material.dart';
import 'package:krazy_klean_app/widgets/auth_appbar.dart';
import 'package:krazy_klean_app/widgets/my_bottomnavbar.dart';
import 'package:krazy_klean_app/widgets/my_richtext.dart';
import 'package:krazy_klean_app/widgets/my_text.dart';

class OurMissionScreen extends StatefulWidget {
  const OurMissionScreen({super.key});

  @override
  State<OurMissionScreen> createState() => _OurMissionScreenState();
}

class _OurMissionScreenState extends State<OurMissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AuthAppbar(
          showBackButton: false,
          backgroundColor: Color(0xFF4EC6D7),
          foregroundColor: Colors.white,
        ),
      ),
      body: SafeArea(
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
                  child: Image(
                    image: AssetImage('././assets/images/map.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 30,
                  left: (MediaQuery.of(context).size.width - 200) /
                      2, // Center horizontally
                  child: Image(
                    image: AssetImage(
                      '././assets/images/circle_mission_image.png',
                    ),
                    height: 200,
                    width: 200,
                  ),
                ),
                Positioned(
                  top: 27,
                  left: 45,
                  child: Image(
                    image: AssetImage('././assets/images/big_bottle.png'),
                    width: 200,
                  ),
                ),
                Positioned(
                  bottom: -15,
                  left: 60,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF07A9BF),
                    radius: 8,
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 70,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 4,
                  ),
                ),
                Positioned(
                  top: 25,
                  left: 70,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 130,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 4,
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 100,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 5,
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 65,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 10,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      MyText(
                        text: "Our Mission",
                        color: Colors.black,
                        font_size: 20,
                        font_weight: FontWeight.w600,
                      ),
                      MyRichText(
                          font_size: 12,
                          font_weight: FontWeight.w600,
                          children: [
                            TextSpan(
                                text: "Krazy Klean Labs, LLC. Using high\n"),
                            TextSpan(text: "and low technology")
                          ]),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: Container(
                          child: MyText(
                              font_size: 10,
                              text:
                                  "Krazy Klean Labs, LLC. Was Created To Apply Existing High And Low Technologies, As Well As Develop New Ones, To Replace Antiquated, Toxic Chemical Industrial And Consumer Cleaning Solutions. Originally, Krazy Klean Was Introduced In 1994 As ToiletClean On The Joan Rivers “Can We Shop” Show. Thereafter It Went On To Sell For Many Years On QVC. In 2020 Krazy Klean Labs Was Successfull In Demonstrating How The Product Affects Water To Permanently Prevent Water From Staining Toilets And Subsequently Publish The First White Paper Of Its Kind. The Mission Of Krazy Klean Labs, LLC. Is To Develop Clean Technologies To Replace Harmful And Toxic Chemistry For Use With Cleaning Chores Worldwide."),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(
        mission_color: Color(0xFF07A9BF),
        active_page_global: true,
        active_page_stats: true,
      ),
    );
  }
}
