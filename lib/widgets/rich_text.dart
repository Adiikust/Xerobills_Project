import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final String firstText;
  final String secondText;
  final double firstTextSize;
  final double secondTextSize;
  final FontWeight firstTextWeight;
  final FontWeight secondTextWeight;
  final String fontFamily;
  final Color textColor;

  CustomRichText({
    required this.firstText,
    required this.secondText,
    this.firstTextSize = 20,
    this.secondTextSize = 20,
    this.firstTextWeight = FontWeight.w400,
    this.secondTextWeight = FontWeight.w600,
    this.fontFamily = "Poppins",
    this.textColor = const Color(0xFF026F2E),
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontFamily: fontFamily,
          color: textColor,
        ),
        children: <TextSpan>[
          TextSpan(
            text: firstText,
            style: TextStyle(
              fontSize: firstTextSize,
              fontWeight: firstTextWeight,
            ),
          ),
          TextSpan(
            text: " ${secondText}",
            style: TextStyle(
              fontSize: secondTextSize,
              fontWeight: secondTextWeight,
            ),
          ),
        ],
      ),
    );
  }
}
