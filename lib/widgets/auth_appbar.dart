import 'package:flutter/material.dart';

class AuthAppbar extends StatelessWidget {
  final Widget? child;
  final bool? showBackButton;
  final double? height;
  final Color? backgroundColor;
  final Color? foregroundColor;
  const AuthAppbar(
      {super.key, this.child, this.showBackButton = true, this.height, this.backgroundColor, this.foregroundColor});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        toolbarHeight: height,
        foregroundColor: foregroundColor ?? Color(0xFF0DABC2),
        elevation: 0,
        backgroundColor: backgroundColor ?? Colors.transparent,
        title: child,
        centerTitle: true,
        leading: showBackButton == true
            ? IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                })
            : Container());
  }
}
