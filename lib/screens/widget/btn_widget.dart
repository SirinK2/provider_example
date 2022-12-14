import 'package:flutter/material.dart';
class BtnWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Function() onPressed;
  final Color textColor;

  const BtnWidget({Key? key, required this.color, required this.text, required this.onPressed, required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: MaterialButton(
        onPressed: onPressed,
        color: color,
        child: Text(text, style: TextStyle(color: textColor),),

      ),

    );
  }
}
