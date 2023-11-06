import 'package:flutter/material.dart';
import 'package:krazy_klean_app/screens/signin_screen.dart';
import 'package:krazy_klean_app/widgets/custom_page_router_builder.dart';
import '../widgets/my_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xFF4EC6D7), Color(0xFF00A6BD)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )
        ),
        child: Stack(children: [
          Positioned(
              bottom: 0,
              left: -30,
              child: Image(
                image: AssetImage("././assets/frames/Frame.png"),
                height: 350,
                width: 350,
              )),
          Positioned(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: AssetImage("././assets/logos/logo.png"),
                    height: 300,
                    width: 300,
                  ),
                  MyButton(
                    height: 60,
                    width: 60,
                    onPressed: () {
                      Navigator.push(
                        context,
                        CustomPageRouteBuilder(SignInScreen()),
                      );
                    },
                    child: Icon(
                      Icons.arrow_forward,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
