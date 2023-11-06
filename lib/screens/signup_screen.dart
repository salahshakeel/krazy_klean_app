import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krazy_klean_app/widgets/my_checkbox.dart';

import '../widgets/auth_appbar.dart';
import '../widgets/my_button.dart';
import '../widgets/my_richtext.dart';
import '../widgets/my_text.dart';
import '../widgets/my_textfeild.dart';
import '../widgets/social_card.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: AuthAppbar()),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              MyRichText(
                align: TextAlign.start,
                children: [
                  TextSpan(
                    text: "Create Your\n",
                  ),
                  TextSpan(
                    text: "Account",
                  )
                ],
                font_weight: FontWeight.bold,
              ),
              Form(
                child: Column(children: [
                  MyTextfeild(
                    hint_text: "Email",
                    prefix_icon: Icons.mail,
                    enable_suffix: false,
                  ),
                  MyTextfeild(
                    hint_text: "Password",
                    prefix_icon: Icons.lock,
                    suffix_icon: Icons.remove_red_eye,
                    enable_suffix: true,
                  ),
                  MyCheckbox(),
                  MyButton(
                    text: "Sign Up",
                    onPressed: () {},
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: MyText(
                        text: "Forgot Password?",
                        font_weight: FontWeight.bold,
                        color: Color(0xFF0DABC2),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(child: Divider()),
                          MyText(
                            text: "   or continue with   ",
                            font_size: 15,
                            color: Colors.black87,
                          ),
                          Expanded(child: Divider()),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SocialCard(image_name: "facebook"),
                        SocialCard(image_name: "google"),
                        SocialCard(image_name: "apple"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: MyRichText(
                        font_size: 13,
                        color: Colors.grey,
                        children: [
                          TextSpan(
                            text: "Already have an account?",
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pop(context);
                              },
                            text: " Sign In",
                            style: GoogleFonts.poppins(
                                color: Color(0xFF0DABC2),
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  )
                ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
