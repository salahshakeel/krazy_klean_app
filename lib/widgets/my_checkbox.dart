import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            value: isChecked,
            activeColor: Color(0xFF16AFC4),
            side: BorderSide(
                color: Color(0xFF16AFC4),
                width: 2), // Border color when not checked
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Color(0xFF16AFC4)), // Border color
              borderRadius: BorderRadius.circular(
                  4), // Optional: Adjust the border radius
            ),
          ),
          Text('Remeber Me'),
        ],
      ),
    );
  }
}
