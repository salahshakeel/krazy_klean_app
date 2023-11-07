import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krazy_klean_app/widgets/my_checkbox.dart';

import '../widgets/auth_appbar.dart';
import '../widgets/my_button.dart';
import '../widgets/my_richtext.dart';
import '../widgets/my_text.dart';
import '../widgets/my_textfeild.dart';
import '../widgets/social_card.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:krazy_klean_app/Controllers/AuthController.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final AuthController authController = Get.put(AuthController());

  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: AuthAppbar()),
      body: SingleChildScrollView(
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
                key: key,
                child: Column(children: [
                  MyTextfeild(
                    controller: nameController,
                    hint_text: "Name",
                    prefix_icon: Icons.person,
                    enable_suffix: false,
                    validate_message: "Please enter your name",
                  ),
                  MyTextfeild(
                    controller: emailController,
                    hint_text: "Email",
                    prefix_icon: Icons.mail,
                    enable_suffix: false,
                    validate_message: "Please enter your email",
                  ),
                  MyTextfeild(
                    controller: passwordController,
                    hint_text: "Password",
                    prefix_icon: Icons.lock,
                    suffix_icon: Icons.remove_red_eye,
                    enable_suffix: true,
                    obscure_text: true,
                    validate_message: "Please enter your password",
                  ),
                  MyCheckbox(),
                  MyButton(
                    text: "Sign Up",
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        authController.onCreateAccount(nameController.text,
                            emailController.text, passwordController.text);
                      }
                    },
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: MyText(
                        text: "Forgot Password?",
                        font_weight: FontWeight.bold,
                        color: Color(0xFF0DABC2),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
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
                  ),
                ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
