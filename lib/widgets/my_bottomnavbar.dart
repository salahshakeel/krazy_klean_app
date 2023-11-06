import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:krazy_klean_app/screens/global_flushes_screen.dart';
import 'package:krazy_klean_app/screens/our_mission_screen.dart';
import 'package:krazy_klean_app/screens/statistics_screen.dart';
import 'package:krazy_klean_app/widgets/custom_page_router_builder.dart';

class MyBottomNavBar extends StatelessWidget {
  final Color? stats_color;
  final Color? mission_color;
  final Color? global_color;
  final bool? active_page_stats, active_page_mission, active_page_global;
  const MyBottomNavBar(
      {super.key, this.stats_color, this.mission_color, this.global_color,
       this.active_page_stats =false ,
       this.active_page_mission =false,
       this.active_page_global=false});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                active_page_mission==true?
                Navigator.pushReplacement(
                    context, CustomPageRouteBuilder(OurMissionScreen())):null;
              },
              child: SvgIcon(
                icon: SvgIconData('././assets/svg_icons/mission_icon.svg'),
                size: 40,
                color: mission_color,
              ),
            ),
            VerticalDivider(
              color: Colors.grey.shade300,
              thickness: 1, // Adjust the thickness as needed
              indent: 15, // Adjust the spacing on top
              endIndent: 15, // Adjust the spacing on bottom
            ),
            GestureDetector(
              onTap: () {
                active_page_stats==true?
                Navigator.pushReplacement(
                    context, CustomPageRouteBuilder(StatisticsScreen())):null;
              },
              child: SvgIcon(
                icon: SvgIconData('././assets/svg_icons/stats_icon.svg'),
                size: 30,
                color: stats_color,
              ),
            ),
            VerticalDivider(
              color: Colors.grey.shade300,
              thickness: 1, // Adjust the thickness as needed
              indent: 15, // Adjust the spacing on top
              endIndent: 15, // Adjust the spacing on bottom
            ),
            GestureDetector(
              onTap: () {
                active_page_global==true?
                Navigator.pushReplacement(
                    context, CustomPageRouteBuilder(GlobalFlushesScreen())):null;
              },
              child: SvgIcon(
                icon: SvgIconData('././assets/svg_icons/global_icon.svg'),
                size: 30,
                color: global_color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
