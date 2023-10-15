import 'package:flutter/material.dart';
import 'package:restaurant_application/core/utils/constant.dart';

class CustomButtonApp extends StatelessWidget {
  const CustomButtonApp({
    super.key,
    required this.width,
    this.buttonColor = kPrimaryColor,
    this.textColor = Colors.white,
    required this.text,
    this.onPressed,
  });
  final double width;
  final Color buttonColor;
  final Color textColor;
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
